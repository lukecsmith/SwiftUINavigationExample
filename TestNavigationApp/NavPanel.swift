//
//  NavPanel.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 04/02/2022.
//

import SwiftUI

struct NavPanel: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        VStack {
            
            ButtonView(buttonText: "Onboarding to root", buttonColour: .blue, onTapped: {
                navSwitches.onboardingToRoot()
            }).padding(.top)
            
            ButtonView(buttonText: "First Tab to root", buttonColour: .blue, onTapped: {
                navSwitches.firstTabToRoot()
            })
            
            ButtonView(buttonText: "Second Tab to root", buttonColour: .blue, onTapped: {
                navSwitches.secondTabToRoot()
            })
            
        }.background(Color.gray)
        .cornerRadius(8.0)
        .padding()
    }
}

struct NavPanel_Previews: PreviewProvider {
    static var previews: some View {
        NavPanel()
    }
}
