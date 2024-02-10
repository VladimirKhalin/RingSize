//
//  FingerView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 10.02.2024.
//

import SwiftUI

struct FingerView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var rectPosition = CGPoint(x: 20, y: 0)
    @State private var pixelSize = 90.0
    @State private var ringSize: Double = 0.0
    @State private var onePixel = 0.15875
    @State var sliderPosition = true
    @State var range: Float = 35
    @State var visibleSize = ""
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                NavigationStack {
                    VStack {
                        HStack(spacing: width * 0.1) {
                            Spacer()
                            Button {
                                sliderPosition.toggle()
                            } label: {
                                Image(systemName: "hand.raised")
                                    .resizable()
                                    .modifier(CircleModifier())
                                    .scaleEffect(x: sliderPosition ? -1 : 1, y: 1)
                            }
                            
                            NavigationLink(destination: InstructionViw()) {
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .modifier(CircleModifier())
                            }
                        }
                        .tint(Color.black)
                        .padding()
                        
                        VStack(spacing: 30){
                            Text("Определите размер \n кольца по ширине пальца")
                                .multilineTextAlignment(.center)
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            
                            Text("Поместите палец и отрегулируйте \n  ползунок по его размеру")
                                .multilineTextAlignment(.center)
                                .font(.footnote)
                            
                            Button {
                                countRingSize()
                            } label: {
                                Text("Получить размер")
                                    .multilineTextAlignment(.center)
                                    .font(.footnote)
                                    .foregroundColor(colorScheme == .dark ? Color .black : Color .white)
                            }
                            .padding(.horizontal, 10)
                            .frame(width: width * 0.5, height: 50)
                            .background(colorScheme == .dark ? Color .white : Color .black)
                            .cornerRadius(5)
                        }
                           
                        HStack(alignment: .top) {
                            
                            SliderVerticalView(rectPosition: $rectPosition, range: $range, sliderPosition: false, pixelSize: $pixelSize)
                                .disabled(sliderPosition ? false : true)
                                .opacity(sliderPosition ? 1.0 : 0.0)
                                .frame(width: 100, height: width )
                            
                            
                            ZStack(alignment: .top) {
                                RoundedRectangle(cornerRadius: 16)
                                    .frame(width: width * 0.5, height: height * 0.6)
                                    .foregroundColor(Color(.systemGray5))
                              
                                RoundedRectangle(cornerRadius: 35)
                                    .padding(.top, 25)
                                    .frame(width: pixelSize)
                                    .foregroundColor(.yellow)
                                
                                RoundedRectangle(cornerRadius: 25.0)
                                    .stroke(lineWidth: 1.0)
                                    .foregroundColor(.white)
                                    .padding(.top, 38)
                                    .frame(width: pixelSize * 0.8, height: 150)
                                
                                Text(visibleSize)
                                    .padding(.top, 250)
                                    
                                
                            }
                            .frame(height: height * 0.6)
                            
                            SliderVerticalView(rectPosition: $rectPosition, range: $range, sliderPosition: true, pixelSize: $pixelSize)
                                .disabled(sliderPosition ? true : false)
                                .opacity(sliderPosition ? 0.0 : 1.0)
                                .frame(width: 100, height: width )
                           
                        }
                        .padding(.top, 30)
                    }
                    .padding(.horizontal, 16)
                }
            }
            .frame(width: width, height: height)
            .onAppear{
                rectPosition.y = CGFloat(width * 0.7 / 2)
                self.pixelSize = 80.0 + Double(range)
            }
        }
    }
    private func countRingSize() {
        ringSize = Double(pixelSize) * onePixel
        ringSize =  ringSize.round(nearest: 0.5)
        visibleSize = String(ringSize)
    }
}

#Preview {
    FingerView()
}
