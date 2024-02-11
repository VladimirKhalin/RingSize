//
//  CalculatorView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 11.02.2024.
//

import SwiftUI

struct CalculatorView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var countryNameIn = ""
    @State var countryNameOut = ""
    @State var ringSize = ""
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            NavigationStack {
            ZStack {
                
                Image(colorScheme == .dark ? "RingWhite" : "RingBlack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .opacity(0.05)
                
                    VStack {
                        NavigationLink(destination: CountryModalView( countryName: $countryNameIn)) {
                            VStack {
                                HStack {
                                    Text("Из: \(countryNameIn)")
                                    Spacer()
                                    Image(systemName: "chevron.right")
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
                                    Image(systemName: "chevron.right")
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
                                    Image(systemName: "chevron.right")
                                }
                                .padding()
                                Divider()
                            }
                        }
                        
                    }
                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    .toolbarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(true)
                    .toolbar{
                        
                        ToolbarItem(placement: .principal) {
                            Text("Калькулятор")
                                .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                                .fontWeight(.bold)
                        }
                    }
                }
            }
            .frame(width: width, height: height)
        }
    }
}

#Preview {
    CalculatorView()
}
