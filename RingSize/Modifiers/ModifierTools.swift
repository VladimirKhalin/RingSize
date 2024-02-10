//
//  ModifierTools.swift
//  RingSize
//
//  Created by Vladimir Khalin on 10.02.2024.
//

import Foundation
import SwiftUI

struct CircleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 20, height: 20)
        
            .overlay{
                Circle()
                    .stroke(lineWidth: 1.0)
                    .frame(width: 40, height: 40)
                    .opacity(0.2)
            }
            
    }
}
