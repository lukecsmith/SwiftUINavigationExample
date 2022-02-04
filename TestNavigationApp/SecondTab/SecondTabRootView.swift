//
//  SecondTabRootView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 07/01/2022.
//

import SwiftUI

struct SecondTabRootView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        NavigationView {
            VStack {
                CardView(text: "Second Tab Root View",
                         backgroundColour: .gray)
                
                ButtonView(buttonText: "Next",
                           buttonColour: .green) {
                    navSwitches.secondTabRootToSecond = true
                }

                NavigationLink(destination: SecondTabSecondView(),
                               isActive: $navSwitches.secondTabRootToSecond) {
                    EmptyView()
                }.isDetailLink(false)
            }
        }
    }
}

struct SecondTabRootView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabRootView()
            .environmentObject(NavSwitches())
    }
}
