//
//  CardView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 05/01/2022.
//

import SwiftUI

struct CardView: View {
    
    var text: String
    var backgroundColour: Color
    
    var body: some View {
        ZStack {
            backgroundColour
                .cornerRadius(8)
            Text(text)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(backgroundColour)
        }.padding(12)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(text: "Hello World", backgroundColour: Color.red)
    }
}
