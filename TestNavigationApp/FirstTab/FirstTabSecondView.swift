//
//  FirstTabSecondView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 07/01/2022.
//

import SwiftUI

struct FirstTabSecondView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        VStack {
            CardView(text: "First Tab Second View",
                     backgroundColour: .gray)
            
            ButtonView(buttonText: "Next",
                       buttonColour: .green) {
                navSwitches.firstTabSecondToThird = true
            }

            NavigationLink(destination: FirstTabThirdView(),
                           isActive: $navSwitches.firstTabSecondToThird) {
                EmptyView()
            }.isDetailLink(false)
        }
    }
}

struct FirstTabSecondView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabSecondView()
            .environmentObject(NavSwitches())
    }
}
