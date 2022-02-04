//
//  SecondTabSecondView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 07/01/2022.
//

import SwiftUI

struct SecondTabSecondView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        VStack {
            CardView(text: "Second Tab Second View",
                     backgroundColour: .gray)
            
            ButtonView(buttonText: "Next",
                       buttonColour: .green) {
                navSwitches.secondTabSecondToThird = true
            }

            NavigationLink(destination: SecondTabThirdView(),
                           isActive: $navSwitches.secondTabSecondToThird) {
                EmptyView()
            }.isDetailLink(false)
        }
    }
}

struct SecondTabSecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabSecondView()
            .environmentObject(NavSwitches())
    }
}
