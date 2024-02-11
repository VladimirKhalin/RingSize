@_private(sourceFile: "CountryModalView.swift") import RingSize
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension CountryModalView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/CountryModalView.swift", line: 18)
        
        ScrollView {
            VStack{
                ForEach(produserList, id: \.self) { country in
                    Button{
                        print(country)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(country)
                                .font(.headline)
                            Divider()
                        }
                        .padding(.vertical, __designTimeInteger("#85228.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[0].arg[1].value", fallback: 4))
                        .padding(.horizontal, __designTimeInteger("#85228.[1].[3].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0].modifier[1].arg[1].value", fallback: 24))
                    }
                    
                    
                }
            }
        }
        .foregroundColor(colorScheme == .dark ? Color .white : Color .black)
        
        
        
    
#sourceLocation()
    }
}

import struct RingSize.CountryModalView
#Preview {
    CountryModalView()
}



