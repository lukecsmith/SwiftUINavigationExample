//
//  OnboardingThird.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 05/01/2022.
//

import SwiftUI

struct OnboardingThird: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        VStack {
            CardView(text: "Third Onboarding View",
                     backgroundColour: .gray)
            
            ButtonView(buttonText: "Next",
                       buttonColour: .green) {
                navSwitches.onboardingToTabView = true
            }

            NavigationLink(destination: MainTabView(),
                           isActive: $navSwitches.onboardingToTabView) {
                EmptyView()
            }.isDetailLink(false)
        }
    }
}

struct OnboardingThird_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingThird()
            .environmentObject(NavSwitches())
    }
}
