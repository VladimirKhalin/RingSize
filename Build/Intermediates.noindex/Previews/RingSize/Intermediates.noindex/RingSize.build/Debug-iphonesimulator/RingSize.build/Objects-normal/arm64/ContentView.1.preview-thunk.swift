@_private(sourceFile: "ContentView.swift") import RingSize
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: countRingSize()) private func __preview__countRingSize() {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/ContentView.swift", line: 220)
        ringSize = Double(pixelSize) * onePixel
        ringSize = ringSize.round(nearest: __designTimeFloat("#5296.[1].[8].[1].[0]", fallback: 0.5))
        visibleSize = String(ringSize)
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/ContentView.swift", line: 21)
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height

            ZStack {
                NavigationStack {
                    VStack{
                        HStack(spacing: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0]", fallback: 0.1)) {
                            NavigationLink(destination: SettingView()) {
                                Image(systemName: __designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "gear"))
                                    .resizable()
                                    .modifier(CircleModifier())
                            }
                            Spacer()
                            NavigationLink(destination: HistoryView()) {
                                Image(systemName: __designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].arg[1].value.[0].arg[0].value", fallback: "timer"))
                                    .resizable()
                                    .modifier(CircleModifier())
                            }
                            NavigationLink(destination: InstructionViw()) {
                                Image(systemName: __designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[3].arg[1].value.[0].arg[0].value", fallback: "info.circle"))
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
                            RoundedRectangle(cornerRadius: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].arg[0].value", fallback: 10))
                                .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[1].value.arg[0].value", fallback: 1), lineCap: .round))
                                .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].modifier[1].arg[0].value.[0]", fallback: 0.6), height: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[0].modifier[1].arg[1].value.[0]", fallback: 0.6))
                            
                            HStack {
                                ForEach(__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].arg[0].value.[0]", fallback: 1)...__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].arg[0].value.[1]", fallback: 26), id:\.self) { size in
                                    Rectangle()
                                        .frame(width: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 1), height: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[1].value.[0]", fallback: 0.6))
                                        .opacity(__designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: 0.2))
                                }
                            }
                            
                            VStack {
                                ForEach(__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0]", fallback: 1)...__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1]", fallback: 26), id:\.self) { size in
                                    Rectangle()
                                        .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value.[0]", fallback: 0.6), height: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[1].value", fallback: 1))
                                        .opacity(__designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].arg[2].value.[0].modifier[1].arg[0].value", fallback: 0.2))
                                }
                            }
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(.yellow)
                                    .frame(width: pixelSize, height: pixelSize)
                                HStack {
                                    Image(systemName: __designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "arrow.left"))
                                    Spacer()
                                    Image(systemName: __designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[1].arg[0].value.[2].arg[0].value", fallback: "arrow.right"))
                                }
                                .frame(width: pixelSize, height: pixelSize)
                                
                                HStack {
                                    Rectangle()
                                        .frame(width: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].modifier[0].arg[0].value", fallback: 1), height: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[2].arg[0].value.[0].modifier[0].arg[1].value.[0]", fallback: 0.6))
                                    Spacer()
                                    Rectangle()
                                        .frame(width: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[2].arg[0].value.[2].modifier[0].arg[0].value", fallback: 1), height: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[2].arg[0].value.[2].modifier[0].arg[1].value.[0]", fallback: 0.6))
                                    
                                }
                                .frame(width: pixelSize)
                                
                                VStack {
                                    Rectangle()
                                        .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: 0.6), height: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[3].arg[0].value.[0].modifier[0].arg[1].value", fallback: 1))
                                    Spacer()
                                    Rectangle()
                                        .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[3].arg[0].value.[2].modifier[0].arg[0].value.[0]", fallback: 0.6), height: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].arg[0].value.[3].arg[0].value.[3].arg[0].value.[2].modifier[0].arg[1].value", fallback: 1))
                                    
                                }
                                .frame(height: pixelSize)
                                
                                Text(visibleSize)
                                
                            }
                        }
                        .padding(__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[3].modifier[0].arg[0].value", fallback: 8))
                        
                        Button {
                            countRingSize()
                        } label: {
                            Text(__designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "Узнайте размер кольца"))
                                .multilineTextAlignment(.center)
                                .font(.footnote)
                                .foregroundColor(colorScheme == .dark ? Color .black : Color .white)
                        }
                        .padding(.horizontal, __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].modifier[0].arg[1].value", fallback: 10))
                        .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].modifier[1].arg[0].value.[0]", fallback: 0.5), height: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].modifier[1].arg[1].value", fallback: 50))
                        .background(colorScheme == .dark ? Color .white : Color .black)
                        .cornerRadius(__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[4].modifier[3].arg[0].value", fallback: 5))
                        
                        
                        
                        
                        VStack {
                            Text(__designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[0].arg[0].value", fallback: "Используйте ползунок, чтобы выбрать размер"))
                                .font(.footnote)
                            
                            ZStack {
                                HStack(alignment: .bottom) {
                                    ForEach(__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]", fallback: 1)...__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[1]", fallback: 31), id:\.self) { size in
                                        Rectangle()
                                            .frame(width: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[0].value", fallback: 1), height: size % __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[1].value.if.[0]", fallback: 2) == __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[1].value.if.[1]", fallback: 0)  ? __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[1].value.then", fallback: 24) : __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[2].value.[0].modifier[0].arg[1].value.else", fallback: 16))
                                    }
                                }
                                .opacity(__designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 0.2))
                                .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[0].value.[0]", fallback: 0.7), height: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[0].modifier[1].arg[1].value", fallback: 100))
                                
                                HStack{
                                    Rectangle()
                                        .frame(width: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[0].value", fallback: 4), height: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[0].arg[1].value", fallback: 40))
                                        .foregroundColor(.yellow)
                                        .position(rectPosition)
                                        .gesture(
                                            DragGesture(minimumDistance: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: 2))
                                                .onChanged { value in
                                                    if value.location.x > 0.0 && value.location.x < width * 0.7  {
                                                        self.rectPosition.x = value.location.x
                                                        self.percentage = min(max(__designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value.[0].[0].[1].[0]", fallback: 0), Float(value.location.x / width * __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value.[0].[0].[1].[1]", fallback: 75))), __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value.[0].[0].[1].[2]", fallback: 75))
                                                        self.pixelSize = __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value.[0].[0].[2].[0]", fallback: 90.0) + Double(percentage)
                                                    }
                                                }
                                        )
                                }
                                .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[0].value.[0]", fallback: 0.7), height: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].arg[0].value.[1].modifier[0].arg[1].value", fallback: 40))
                            }
                            .padding(.horizontal, __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].arg[0].value.[1].modifier[0].arg[1].value", fallback: 16))
                        }
                        .padding(.top, __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[5].modifier[0].arg[1].value", fallback: 8))
                        
                        HStack{
                            Button {
                                self.rectPosition.x -= __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[0].arg[0].value.[0].[0]", fallback: 0.5)
                                self.pixelSize -= __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[0].arg[0].value.[1].[0]", fallback: 0.25)
                                
                            } label: {
                                Text(__designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "-"))
                                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                            }
                            .overlay{
                                RoundedRectangle(cornerRadius: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: 5))
                                    .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[0].modifier[0].arg[0].value.[0].modifier[0].arg[1].value.arg[0].value", fallback: 1), lineCap: .round))
                                    .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[0].modifier[0].arg[0].value.[0].modifier[1].arg[0].value.[0]", fallback: 0.1), height: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[0].modifier[0].arg[0].value.[0].modifier[1].arg[1].value.[0]", fallback: 0.1))
                            }
                            Spacer()
                            
                            Text(__designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[2].arg[0].value", fallback: "Тонкая настройка"))
                            
                            Spacer()
                            
                            Button {
                                self.rectPosition.x += __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[4].arg[0].value.[0].[0]", fallback: 0.5)
                                self.pixelSize += __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[4].arg[0].value.[1].[0]", fallback: 0.25)
                            } label: {
                                Text(__designTimeString("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[4].arg[1].value.[0].arg[0].value", fallback: "+"))
                                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                            }
                            .overlay{
                                RoundedRectangle(cornerRadius: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[4].modifier[0].arg[0].value.[0].arg[0].value", fallback: 5))
                                    .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[4].modifier[0].arg[0].value.[0].modifier[0].arg[1].value.arg[0].value", fallback: 1), lineCap: .round))
                                    .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[4].modifier[0].arg[0].value.[0].modifier[1].arg[0].value.[0]", fallback: 0.1), height: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].arg[0].value.[4].modifier[0].arg[0].value.[0].modifier[1].arg[1].value.[0]", fallback: 0.1))
                            }
                            
                        }
                        .padding(.horizontal, __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].modifier[0].arg[1].value", fallback: 16))
                        .frame(width: width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.[6].modifier[1].arg[0].value.[0]", fallback: 0.7))
                        
                        Spacer()
                        
                        Text("\(width) : \(height) ")
                        
                        
                        Divider()
                    }
                    .padding(.horizontal, __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 16))
                }
            }
            .frame(width: width, height: height)
            .onAppear{
                rectPosition.x = CGFloat(width * __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.[0].[0]", fallback: 0.7) / __designTimeInteger("#5296.[1].[7].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.[0].[1]", fallback: 2))
                self.pixelSize = __designTimeFloat("#5296.[1].[7].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value.[1].[0]", fallback: 90.0) + Double(percentage)
            }
        }
    
#sourceLocation()
    }
}

import struct RingSize.ContentView
#Preview {
    ContentView()
}



