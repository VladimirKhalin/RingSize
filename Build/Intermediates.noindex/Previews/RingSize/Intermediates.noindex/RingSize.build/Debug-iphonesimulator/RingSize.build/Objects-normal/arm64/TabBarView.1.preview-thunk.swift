@_private(sourceFile: "TabBarView.swift") import RingSize
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension TabBarView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/vladimirkhalin/Desktop/Xcode PR/Swiftbook/RingSize/RingSize/TabBar/TabBarView.swift", line: 14)
        TabView(selection: $selectedTab) {
            ContentView()
                .tabItem {
                    Image(systemName: __designTimeString("#5400.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "timer.circle"))
                    Text(__designTimeString("#5400.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Измеритель кольца"))
                        .environment(\.symbolVariants, selectedTab == __designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[0].modifier[0].arg[0].value.[1].modifier[0].arg[1].value.if.[0]", fallback: 0) ? .fill : .none)
                }
                .onAppear{
                    selectedTab = __designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[0].modifier[1].arg[0].value.[0].[0]", fallback: 0)
                }
                .tag(__designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 0))
            
            FingerView()
                .tabItem {
                    Image(systemName: __designTimeString("#5400.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "hand.point.up.left"))
                    Text(__designTimeString("#5400.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Измеритель пальца"))
                        .environment(\.symbolVariants, selectedTab == __designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[1].modifier[0].arg[0].value.[1].modifier[0].arg[1].value.if.[0]", fallback: 1) ? .fill : .none)
                }
                .onAppear{
                    selectedTab = __designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[1].modifier[1].arg[0].value.[0].[0]", fallback: 1)
                }
                .tag(__designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 1))
            
            ContentView()
                .tabItem {
                    Image(systemName: __designTimeString("#5400.[1].[1].property.[0].[0].arg[1].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "circle.dotted.and.circle"))
                    Text(__designTimeString("#5400.[1].[1].property.[0].[0].arg[1].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Калькулятор"))
                        .environment(\.symbolVariants, selectedTab == __designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[2].modifier[0].arg[0].value.[1].modifier[0].arg[1].value.if.[0]", fallback: 2) ? .fill : .none)
                }
                .onAppear{
                    selectedTab = __designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[2].modifier[1].arg[0].value.[0].[0]", fallback: 2)
                }
                .tag(__designTimeInteger("#5400.[1].[1].property.[0].[0].arg[1].value.[2].modifier[2].arg[0].value", fallback: 2))
            
            
        }
        .tint(.orange)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    
#sourceLocation()
    }
}

import struct RingSize.TabBarView
#Preview {
    TabBarView()
}



