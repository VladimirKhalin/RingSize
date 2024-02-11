@_private(sourceFile: "HistoryView.swift") import RingSize
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension View {
    @_dynamicReplacement(for: inverseMask(_:)) private func __preview__inverseMask<M: View>(_ mask: M) -> some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/HistoryView.swift", line: 70)
        // exchange foreground and background
        let inversed = mask
            .foregroundColor(.black)  // hide foreground
            .background(Color.white)  // let the background stand out
            .compositingGroup()       // ⭐️ composite all layers
            .luminanceToAlpha()       // ⭐️ turn luminance into alpha (opacity)
        return self.mask(inversed)
    
#sourceLocation()
    }
}

extension HistoryView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/HistoryView.swift", line: 15)
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            NavigationStack {
            ZStack {
                
                Image(colorScheme == .dark ? __designTimeString("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.then", fallback: "RingWhite") : __designTimeString("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].arg[0].value.else", fallback: "RingBlack"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: __designTimeInteger("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 300), height: __designTimeInteger("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 300))
                    .opacity(__designTimeFloat("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value", fallback: 0.05))
                
                
                    VStack {
                        
                        Text(__designTimeString("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Результаты не сохранены"))
                        
                    }
                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                    .toolbarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(__designTimeBoolean("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[0].value", fallback: true))
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                self.presentationMode.wrappedValue.dismiss()
                            } label: {
                                Image(systemName: __designTimeString("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "chevron.backward"))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: __designTimeInteger("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 15))
                                    .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
                            }
                        }
                        ToolbarItem(placement: .principal) {
                            Text(__designTimeString("#76136.[1].[2].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value.[1].modifier[3].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "История"))
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

import struct RingSize.HistoryView
#Preview {
    HistoryView()
}



