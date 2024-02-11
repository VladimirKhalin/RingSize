//
//  HistoryView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 10.02.2024.
//

import SwiftUI

struct HistoryView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
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
                        
                        Text("Результаты не сохранены")
                        
                    }
                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    .toolbarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(true)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                self.presentationMode.wrappedValue.dismiss()
                            } label: {
                                Image(systemName: "chevron.backward")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 15)
                                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            Text("История")
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
    HistoryView()
}

extension View {
    // view.inverseMask(_:)
    public func inverseMask<M: View>(_ mask: M) -> some View {
        // exchange foreground and background
        let inversed = mask
            .foregroundColor(.black)  // hide foreground
            .background(Color.white)  // let the background stand out
            .compositingGroup()       // ⭐️ composite all layers
            .luminanceToAlpha()       // ⭐️ turn luminance into alpha (opacity)
        return self.mask(inversed)
    }
}
