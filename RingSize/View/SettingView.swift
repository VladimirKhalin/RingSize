//
//  SettingView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 10.02.2024.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: CountrySetView()) {
                    VStack {
                        HStack {
                            Text("Выберите страну: (Россия)")
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
                            Text("Техническая поддержка:")
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
                            Text("Условия использования:")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .padding()
                        Divider()
                    }
                }

                Spacer()
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
                    Text("Настройки")
                        .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                        .fontWeight(.bold)
                }
            }
            
        }
    }
}

#Preview {
    SettingView()
}
