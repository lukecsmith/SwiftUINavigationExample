//
//  MainTabView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 06/01/2022.
//

import SwiftUI

struct MainTabView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        TabView(selection: $navSwitches.tabViewSelection) {
            FirstTabRootView()
                .tabItem {
                    Label("First", systemImage: "list.dash")
                }
                .tag(0)
            SecondTabRootView()
                .tabItem {
                    Label("Second", systemImage: "square.and.pencil")
                }
                .tag(1)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(NavSwitches())
    }
}
