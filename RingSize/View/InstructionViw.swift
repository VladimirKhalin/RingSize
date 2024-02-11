//
//  InstructionViw.swift
//  RingSize
//
//  Created by Vladimir Khalin on 10.02.2024.
//

import SwiftUI

struct InstructionViw: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                NavigationStack {
                    VStack {
                        
                    }
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
                            Text("Инструкция")
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
    InstructionViw()
}
