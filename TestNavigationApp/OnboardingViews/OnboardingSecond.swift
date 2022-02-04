//
//  OnboardingSecond.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 05/01/2022.
//

import SwiftUI

struct OnboardingSecond: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        VStack {
            CardView(text: "Second Onboarding View",
                     backgroundColour: .gray)
            
            ButtonView(buttonText: "Next",
                       buttonColour: .green) {
                navSwitches.onboardingSecondToThird = true
            }

            NavigationLink(destination: OnboardingThird(),
                           isActive: $navSwitches.onboardingSecondToThird) {
                EmptyView()
            }.isDetailLink(false)
        }
    }
}

struct OnboardingSecond_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingSecond()
            .environmentObject(NavSwitches())
    }
}
