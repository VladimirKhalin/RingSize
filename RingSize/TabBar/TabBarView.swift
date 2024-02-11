//
//  TabBarView.swift
//  RingSize
//
//  Created by Vladimir Khalin on 10.02.2024.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            ContentView()
                .tabItem {
                    Image(systemName: "timer.circle")
                    Text("Измеритель кольца")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear{
                    selectedTab = 0
                }
                .tag(0)
            
            FingerView()
                .tabItem {
                    Image(systemName: "hand.point.up.left")
                    Text("Измеритель пальца")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                }
                .onAppear{
                    selectedTab = 1
                }
                .tag(1)
            
            CalculatorView()
                .tabItem {
                    Image(systemName: "circle.dotted.and.circle")
                    Text("Калькулятор")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .onAppear{
                    selectedTab = 2
                }
                .tag(2)
            
            
        }
        .tint(.orange)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    TabBarView()
}
