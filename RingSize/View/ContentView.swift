//
//  ContentView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 09.02.2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var percentage: Float = 35

    @State private var rectPosition = CGPoint(x: 0, y: 20)
    @State private var pixelSize = 100.0
    @State private var ringSize: Double = 0.0
    @State private var onePixel = 0.15875
    @State var visibleSize = ""
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height

            ZStack {
                NavigationStack {
                    VStack{
                        HStack(spacing: width * 0.1) {
                            NavigationLink(destination: SettingView()) {
                                Image(systemName: "gear")
                                    .resizable()
                                    .modifier(CircleModifier())
                            }
                            Spacer()
                            NavigationLink(destination: HistoryView()) {
                                Image(systemName: "timer")
                                    .resizable()
                                    .modifier(CircleModifier())
                            }
                            NavigationLink(destination: InstructionViw()) {
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .modifier(CircleModifier())
                            }
                        }
                        .tint(colorScheme == .dark ? Color .white : Color .black)
                        .padding()
                        
                        Spacer()
                        Text("Поместите кольцо \n на круг")
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: 1, lineCap: .round))
                                .frame(width: width * 0.6, height: width * 0.6)
                            
                            HStack {
                                ForEach(1...26, id:\.self) { size in
                                    Rectangle()
                                        .frame(width: 1, height: width * 0.6)
                                        .opacity(0.2)
                                }
                            }
                            
                            VStack {
                                ForEach(1...26, id:\.self) { size in
                                    Rectangle()
                                        .frame(width: width * 0.6, height: 1)
                                        .opacity(0.2)
                                }
                            }
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(.yellow)
                                    .frame(width: pixelSize, height: pixelSize)
                                HStack {
                                    Image(systemName: "arrow.left")
                                    Spacer()
                                    Image(systemName: "arrow.right")
                                }
                                .frame(width: pixelSize, height: pixelSize)
                                
                                HStack {
                                    Rectangle()
                                        .frame(width: 1, height: width * 0.6)
                                    Spacer()
                                    Rectangle()
                                        .frame(width: 1, height: width * 0.6)
                                    
                                }
                                .frame(width: pixelSize)
                                
                                VStack {
                                    Rectangle()
                                        .frame(width: width * 0.6, height: 1)
                                    Spacer()
                                    Rectangle()
                                        .frame(width: width * 0.6, height: 1)
                                    
                                }
                                .frame(height: pixelSize)
                                
                                Text(visibleSize)
                                
                            }
                        }
                        .padding(8)
                        
                        Button {
                            countRingSize()
                        } label: {
                            Text("Узнайте размер кольца")
                                .multilineTextAlignment(.center)
                                .font(.footnote)
                                .foregroundColor(colorScheme == .dark ? Color .black : Color .white)
                        }
                        .padding(.horizontal, 10)
                        .frame(width: width * 0.5, height: 50)
                        .background(colorScheme == .dark ? Color .white : Color .black)
                        .cornerRadius(5)
                        
                        
                        
                        
                        VStack {
                            Text("Используйте ползунок, чтобы выбрать размер")
                                .font(.footnote)
                            
                            ZStack {
                                HStack(alignment: .bottom) {
                                    ForEach(1...31, id:\.self) { size in
                                        Rectangle()
                                            .frame(width: 1, height: size % 2 == 0  ? 24 : 16)
                                    }
                                }
                                .opacity(0.2)
                                .frame(width: width * 0.7, height: 100)
                                
                                HStack{
                                    Rectangle()
                                        .frame(width: 4, height: 40)
                                        .foregroundColor(.yellow)
                                        .position(rectPosition)
                                        .gesture(
                                            DragGesture(minimumDistance: 2)
                                                .onChanged { value in
                                                    if value.location.x > 0.0 && value.location.x < width * 0.7  {
                                                        self.rectPosition.x = value.location.x
                                                        self.percentage = min(max(0, Float(value.location.x / width * 75)), 75)
                                                        self.pixelSize = 90.0 + Double(percentage)
                                                    }
                                                }
                                        )
                                }
                                .frame(width: width * 0.7, height: 40)
                            }
                            .padding(.horizontal, 16)
                        }
                        .padding(.top, 8)
                        
                        HStack{
                            Button {
                                self.rectPosition.x -= 0.5
                                self.pixelSize -= 0.25
                                
                            } label: {
                                Text("-")
                                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                            }
                            .overlay{
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: 1, lineCap: .round))
                                    .frame(width: width * 0.1, height: width * 0.1)
                            }
                            Spacer()
                            
                            Text("Тонкая настройка")
                            
                            Spacer()
                            
                            Button {
                                self.rectPosition.x += 0.5
                                self.pixelSize += 0.25
                            } label: {
                                Text("+")
                                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                            }
                            .overlay{
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: 1, lineCap: .round))
                                    .frame(width: width * 0.1, height: width * 0.1)
                            }
                            
                        }
                        .padding(.horizontal, 16)
                        .frame(width: width * 0.7)
                        
                        Spacer()
                        
                        Divider()
                    }
                    .padding(.horizontal, 16)
                }
            }
            .frame(width: width, height: height)
            .onAppear{
                rectPosition.x = CGFloat(width * 0.7 / 2)
                self.pixelSize = 90.0 + Double(percentage)
            }
        }
    }
    private func countRingSize() {
        ringSize = Double(pixelSize) * onePixel
        ringSize = ringSize.round(nearest: 0.5)
        visibleSize = String(ringSize)
    }
}

#Preview {
    ContentView()
}
