@_private(sourceFile: "CalculatorView.swift") import RingSize
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CalculatorView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/CalculatorView.swift", line: 18)
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            NavigationStack {
            ZStack {
                
                Image(colorScheme == .dark ? __designTimeString("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.then", fallback: "RingWhite") : __designTimeString("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.else", fallback: "RingBlack"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: __designTimeInteger("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 300), height: __designTimeInteger("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 300))
                    .opacity(__designTimeFloat("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 0.05))
                
                
                    VStack {
                        NavigationLink(destination: CountryModalView( countryName: $countryNameIn)) {
                            VStack {
                                HStack {
                                    Text("Из: \(countryNameIn)")
                                    Spacer()
                                    Image(systemName: __designTimeString("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                                }
                                .padding()
                                Divider()
                            }
                        }
                       
                        NavigationLink(destination: CountrySetView()) {
                            VStack {
                                HStack {
                                    Text("Ваш размер: \(ringSize)")
                                    Spacer()
                                    Image(systemName: __designTimeString("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                                }
                                .padding()
                                Divider()
                            }
                        }
                        
                        
                        
                        
                        NavigationLink(destination: CountryModalView( countryName: $countryNameOut)) {
                            VStack {
                                HStack {
                                    Text("В: \(countryNameOut)")
                                    Spacer()
                                    Image(systemName: __designTimeString("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                                }
                                .padding()
                                Divider()
                            }
                        }
                        
                    }
                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    .toolbarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(__designTimeBoolean("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[0].value", fallback: true))
                    .toolbar{
                        
                        ToolbarItem(placement: .principal) {
                            Text(__designTimeString("#66943.[1].[4].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Калькулятор"))
                                .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                                .fontWeight(.bold)
                        }
                    }
                }
            }
            .frame(width: width, height: height)
        }
    
#sourceLocation()
    }
}

import struct RingSize.CalculatorView
#Preview {
    CalculatorView()
}



