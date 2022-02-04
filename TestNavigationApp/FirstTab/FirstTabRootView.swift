//
//  FirstTabRootView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 07/01/2022.
//

import SwiftUI

struct FirstTabRootView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        NavigationView {
            VStack {
                CardView(text: "First Tab Root View",
                         backgroundColour: .gray)
                
                ButtonView(buttonText: "Next",
                           buttonColour: .green) {
                    navSwitches.firstTabRootToSecond = true
                }

                NavigationLink(destination: FirstTabSecondView(),
                               isActive: $navSwitches.firstTabRootToSecond) {
                    EmptyView()
                }.isDetailLink(false)
            }
        }
    }
}

struct FirstTabRootView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabRootView()
            .environmentObject(NavSwitches())
    }
}
