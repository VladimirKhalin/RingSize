//
//  ArchView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 11.02.2024.
//

import SwiftUI

struct ArchView: View {
    var body: some View {
       Arche()
    }
}

#Preview {
    ArchView()
}


struct Arche: Shape  {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 80, y: 100))
       
        path.addLine(to: CGPoint(x: 120, y: 80))
        path.addLine(to: CGPoint(x: 120, y: 120))
        
        
//        path.addQuadCurve(
//            to: CGPoint(x: 120, y: 120),
//            control: CGPoint(x: 125, y: 125))
        
        path.closeSubpath()
        return path
    }
    
    
}






struct StarNew01: Shape {
    
    var minSize: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        
        var path = Path()
        path.move(to: CGPoint(x: minSize * 0.322, y: minSize * 0.258))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.447, y: minSize * 0.0565),
            control: CGPoint(x: minSize * 0.395, y: minSize * 0.11))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.55, y: minSize * 0.056),
            control: CGPoint(x: minSize * 0.5, y: minSize * 0.008))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.67, y: minSize * 0.258),
            control: CGPoint(x: minSize * 0.604, y: minSize * 0.113))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.709, y: minSize * 0.283),
            control: CGPoint(x: minSize * 0.688, y: minSize * 0.282))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.951, y: minSize * 0.346),
            control: CGPoint(x: minSize * 0.895, y: minSize * 0.314))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.954, y: minSize * 0.475),
            control: CGPoint(x: minSize * 1.016, y: minSize * 0.395))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.822, y: minSize * 0.620),
            control: CGPoint(x: minSize * 0.919, y: minSize * 0.524))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.811, y: minSize * 0.685),
            control: CGPoint(x: minSize * 0.8, y: minSize * 0.645))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.827, y: minSize * 0.895),
            control: CGPoint(x: minSize * 0.83, y: minSize * 0.798))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.693, y: minSize * 0.951),
            control: CGPoint(x: minSize * 0.814, y: minSize * 0.992))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.524, y: minSize * 0.875),
            control: CGPoint(x: minSize * 0.612, y: minSize * 0.919))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.472, y: minSize * 0.875),
            control: CGPoint(x: minSize * 0.5, y: minSize * 0.862))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.274, y: minSize * 0.959),
            control: CGPoint(x: minSize * 0.362, y: minSize * 0.935)) //
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.17, y: minSize * 0.887),
            control: CGPoint(x: minSize * 0.177, y: minSize * 0.979))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.187, y: minSize * 0.677),
            control: CGPoint(x: minSize * 0.166, y: minSize * 0.798))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.174, y: minSize * 0.621),
            control: CGPoint(x: minSize * 0.193, y: minSize * 0.645))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.037, y: minSize * 0.467),
            control: CGPoint(x: minSize * 0.072, y: minSize * 0.516))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.048, y: minSize * 0.345),
            control: CGPoint(x: -minSize * 0.016, y: minSize * 0.387))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.274, y: minSize * 0.285),
            control: CGPoint(x: minSize * 0.104, y: minSize * 0.314))
        path.addQuadCurve(
            to: CGPoint(x: minSize * 0.322, y: minSize * 0.258),
            control: CGPoint(x: minSize * 0.304, y: minSize * 0.282))
        path.closeSubpath()
        return path
    }
}
