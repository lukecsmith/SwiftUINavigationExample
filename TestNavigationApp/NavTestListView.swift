//
//  NavTestListView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 08/01/2022.
//

import SwiftUI

struct NavTestListView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        ButtonView(buttonText: "Next",
                   buttonColour: .green) {
            navSwitches.onboardingSecondToThird = true
        }
    }
}

struct NavTestListView_Previews: PreviewProvider {
    static var previews: some View {
        NavTestListView()
    }
}
