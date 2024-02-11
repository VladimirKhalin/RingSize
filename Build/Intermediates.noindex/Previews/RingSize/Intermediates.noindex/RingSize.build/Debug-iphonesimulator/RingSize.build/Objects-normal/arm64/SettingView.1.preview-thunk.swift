@_private(sourceFile: "SettingView.swift") import RingSize
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension SettingView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/SettingView.swift", line: 15)
        NavigationStack {
            VStack {
                NavigationLink(destination: CountrySetView()) {
                    VStack {
                        HStack {
                            Text(__designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Выберите страну: (Россия)"))
                            Spacer()
                            Image(systemName: __designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                        }
                        .padding()
                        Divider()
                    }
                }

                NavigationLink(destination: CountrySetView()) {
                    VStack {
                        HStack {
                            Text(__designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Техническая поддержка:"))
                            Spacer()
                            Image(systemName: __designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                        }
                        .padding()
                        Divider()
                    }
                }

                NavigationLink(destination: CountrySetView()) {
                    VStack {
                        HStack {
                            Text(__designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Условия использования:"))
                            Spacer()
                            Image(systemName: __designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value.[2].arg[0].value", fallback: "chevron.right"))
                        }
                        .padding()
                        Divider()
                    }
                }

                Spacer()
            }
            .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
            .toolbarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(__designTimeBoolean("#18083.[1].[2].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: true))
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: __designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "chevron.backward"))
                            .resizable()
                            .scaledToFill()
                            .frame(width: __designTimeInteger("#18083.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 15))
                            .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text(__designTimeString("#18083.[1].[2].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Настройки"))
                        .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                        .fontWeight(.bold)
                }
            }
            
        }
    
#sourceLocation()
    }
}

import struct RingSize.SettingView
#Preview {
    SettingView()
}



