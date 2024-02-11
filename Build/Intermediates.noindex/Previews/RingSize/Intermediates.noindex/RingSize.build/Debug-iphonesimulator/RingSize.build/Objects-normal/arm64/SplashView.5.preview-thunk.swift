@_private(sourceFile: "SplashView.swift") import RingSize
import func SwiftUI.__designTimeSelection
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension Arch {
    @_dynamicReplacement(for: path(in:)) private func __preview__path(in rect: CGRect) -> Path {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/SplashView.swift", line: 67)
        var path = Path()
        
        __designTimeSelection(path.move(to: __designTimeSelection(CGPoint(x: __designTimeInteger("#98830.[3].[0].[1].modifier[0].arg[0].value.arg[0].value", fallback: 80), y: __designTimeInteger("#98830.[3].[0].[1].modifier[0].arg[0].value.arg[1].value", fallback: 100)), "#98830.[3].[0].[1].modifier[0].arg[0].value")), "#98830.[3].[0].[1]")
       
        __designTimeSelection(path.addLine(to: __designTimeSelection(CGPoint(x: __designTimeInteger("#98830.[3].[0].[2].modifier[0].arg[0].value.arg[0].value", fallback: 120), y: __designTimeInteger("#98830.[3].[0].[2].modifier[0].arg[0].value.arg[1].value", fallback: 80)), "#98830.[3].[0].[2].modifier[0].arg[0].value")), "#98830.[3].[0].[2]")
        __designTimeSelection(path.addLine(to: __designTimeSelection(CGPoint(x: __designTimeInteger("#98830.[3].[0].[3].modifier[0].arg[0].value.arg[0].value", fallback: 120), y: __designTimeInteger("#98830.[3].[0].[3].modifier[0].arg[0].value.arg[1].value", fallback: 120)), "#98830.[3].[0].[3].modifier[0].arg[0].value")), "#98830.[3].[0].[3]")
        
        
//        path.addQuadCurve(
//            to: CGPoint(x: 120, y: 120),
//            control: CGPoint(x: 125, y: 125))
        
        __designTimeSelection(path.closeSubpath(), "#98830.[3].[0].[4]")
        return __designTimeSelection(path, "#98830.[3].[0].[5]")
    
#sourceLocation()
    }
}

extension SplashView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/View/SplashView.swift", line: 14)
        __designTimeSelection(GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            __designTimeSelection(VStack {
                if self.isActive {
                    __designTimeSelection(TabBarView(), "#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[0].[0]")
                } else {
                    __designTimeSelection(ZStack {
                        
                        __designTimeSelection(Image(__designTimeString("#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[0].arg[0].value", fallback: "RingPresent"))
                            .resizable()
                            .scaledToFill(), "#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[0]")
                        
                        
                       __designTimeSelection(ZStack {
                            __designTimeSelection(Arch(), "#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[0].value.[0]")
                            
                            
                            __designTimeSelection(Text(__designTimeString("#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[0].value.[1].arg[0].value", fallback: "УЗНАЙ РАЗМЕР СВОЕГО КОЛЬЦА"))
                                .font(.headline)
                                .foregroundColor(.black), "#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[1].arg[0].value.[1]")
                            
                        }
                       .frame(width: __designTimeInteger("#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[1].modifier[0].arg[0].value", fallback: 300), height: __designTimeInteger("#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[1].modifier[0].arg[1].value", fallback: 100)), "#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0].arg[0].value.[1]")
                        
                        
                    }, "#98830.[1].[1].property.[0].[0].arg[0].value.[2].arg[0].value.[0].[1].[0]")
                    
                    
                }
            }
            .frame(width: __designTimeSelection(width, "#98830.[1].[1].property.[0].[0].arg[0].value.[2].modifier[0].arg[0].value"), height: __designTimeSelection(height, "#98830.[1].[1].property.[0].[0].arg[0].value.[2].modifier[0].arg[1].value"))
            .background(__designTimeSelection(Color.yellow, "#98830.[1].[1].property.[0].[0].arg[0].value.[2].modifier[1].arg[0].value"))
            .onAppear {
                __designTimeSelection(DispatchQueue.main.asyncAfter(deadline: .now() + __designTimeFloat("#98830.[1].[1].property.[0].[0].arg[0].value.[2].modifier[2].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: 2.0)) {
                    __designTimeSelection(withAnimation {
                        //self.isActive = true
                    }, "#98830.[1].[1].property.[0].[0].arg[0].value.[2].modifier[2].arg[0].value.[0].modifier[0].arg[1].value.[0]")
                }, "#98830.[1].[1].property.[0].[0].arg[0].value.[2].modifier[2].arg[0].value.[0]")
            }, "#98830.[1].[1].property.[0].[0].arg[0].value.[2]")
        }, "#98830.[1].[1].property.[0].[0]")
    
#sourceLocation()
    }
}

import struct RingSize.SplashView
import struct RingSize.Arch
#Preview {
    SplashView()
}



