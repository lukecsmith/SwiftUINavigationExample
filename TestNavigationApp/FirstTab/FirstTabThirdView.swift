//
//  FirstTabThirdView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 07/01/2022.
//

import SwiftUI

struct FirstTabThirdView: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    
    var body: some View {
        VStack {
            CardView(text: "First Tab Third View",
                     backgroundColour: .gray)
            
        }
    }
}

struct FirstTabThirdView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabThirdView()
            .environmentObject(NavSwitches())
    }
}
