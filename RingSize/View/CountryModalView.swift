//
//  CountryModalView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 11.02.2024.
//

import SwiftUI

struct CountryModalView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    
    @State var produserList = ["РОССИЯ", "США"] + ["САУДОВСКАЯ АРАВИЯ", "ВЕЛИКОБРИТАНИЯ", "АВСТРАЛИЯ", "КАНАДА", "МЕКСИКА", "ЯПОНИЯ", "ИТАЛИЯ",  "ШВЕЙЦАРИЯ", "ИНДИЯ",  "НОВАЯ ЗЕЛАНДИЯ", "ИСПАНИЯ", "НИДЕРЛАНДЫ", "ЮЖНАЯ АМЕРИКА", "КИТАЙ", "ИРЛАНДИЯ"].sorted()
    
    @Binding var countryName: String
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack{
                    ForEach(produserList, id: \.self) { country in
                        Button{
                            countryName = country
                            self.presentationMode.wrappedValue.dismiss()
                        } label: {
                            VStack(alignment: .leading) {
                                Text(country)
                                    .font(.headline)
                                Divider()
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 24)
                        }
                        
                        
                    }
                }
            }
            .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
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
                Text("Выберите страну")
                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    CountryModalView(countryName: .constant("РОССИЯ"))
}
