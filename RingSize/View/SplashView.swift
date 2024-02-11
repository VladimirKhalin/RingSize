//
//  SplashView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 11.02.2024.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State var isAnimation: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
           
                if self.isActive {
                    TabBarView()
                } else {
                    ZStack {
                        
                        Image("RingPresent")
                            .resizable()
                            .scaledToFill()
                        
                    
                            Text("УЗНАЙ РАЗМЕР СВОЕГО КОЛЬЦА")
                                .font(.headline)
                                .italic()
                                .foregroundColor(.black)
                                .offset(x: isAnimation ? 50 : 400, y: height * 0.115)
   
                    }
                    
                    
                
            
            .frame(width: width, height: height)
            .background(Color.yellow)
            .onAppear {
                withAnimation(Animation.spring(.bouncy(duration: 1))) {
                    isAnimation.toggle()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
            }
        }
    }
}

#Preview {
    SplashView()
}


struct Arch: Shape  {
    
   
    
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 40, y: 110))
        path.addLine(to: CGPoint(x: 120, y: 80))
        path.addLine(to: CGPoint(x: 120, y: 90))
        path.addLine(to: CGPoint(x: 390, y: 90))
        path.addLine(to: CGPoint(x: 390, y: 130))
        path.addLine(to: CGPoint(x: 120, y: 130))
        path.addLine(to: CGPoint(x: 120, y: 140))
        path.closeSubpath()
        return path
    }
}