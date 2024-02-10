//
//  SliderVerticalView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 10.02.2024.
//

import SwiftUI

struct SliderVerticalView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var rectPosition: CGPoint
    @Binding var range: Float
    @State var sliderPosition: Bool
    @Binding var pixelSize: Double
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            VStack {
                ZStack {
                    VStack(alignment: sliderPosition ? .trailing : .leading) {
                        ForEach(1...31, id:\.self) { size in
                            Rectangle()
                                .frame(width: size % 2 == 0  ? 24 : 16, height: 1)
                        }
                    }
                    .opacity(0.2)
                    .frame(width: 100, height: height * 0.7)
                    
                    VStack{
                        Rectangle()
                            .frame(width: 40, height: 4)
                            .foregroundColor(.yellow)
                            .position(rectPosition)
                            .gesture(
                                DragGesture(minimumDistance: 2)
                                    .onChanged { value in
                                        if value.location.y > 0.0 && value.location.y < height * 0.7  {
                                            self.rectPosition.y = value.location.y
                                            self.range = min(max(0, Float(value.location.y / height * 70)), 70)
                                            self.pixelSize = 90.0 + Double(range)
                                        }
                                    })
                    }
                    .frame(width: 40, height: height * 0.7)
                }
                
                Spacer ()
                
                
                VStack(spacing: 40){
                    Button {
                        self.rectPosition.y += 0.5
                        self.pixelSize += 0.25
                        
                    } label: {
                        Text("+")
                            .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: 1, lineCap: .round))
                            .frame(width: width * 0.5, height: width * 0.5)
                    }
                    
                    Button {
                        self.rectPosition.y -= 0.5
                        self.pixelSize -= 0.25
                    } label: {
                        Text("-")
                            .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(colorScheme == .dark ? Color .white : Color .black, style: StrokeStyle(lineWidth: 1, lineCap: .round))
                            .frame(width: width * 0.5, height: width * 0.5)
                    }
                }
                
            }
            .frame(width: width, height: height)
        }
    }
}

#Preview {
    SliderVerticalView(rectPosition: .constant(CGPoint(x: 20, y: 0)), range: .constant(35), sliderPosition: true, pixelSize: .constant(100))
}
