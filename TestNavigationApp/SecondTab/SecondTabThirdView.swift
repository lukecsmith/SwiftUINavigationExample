//
//  SecondTabThirdView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 07/01/2022.
//

import SwiftUI

struct SecondTabThirdView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        VStack {
            CardView(text: "Second Tab Third View",
                     backgroundColour: .gray)
        }
    }
}

struct SecondTabThirdView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabThirdView()
            .environmentObject(NavSwitches())
    }
}
