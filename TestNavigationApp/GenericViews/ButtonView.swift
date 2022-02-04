//
//  ButtonView.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 06/01/2022.
//

import SwiftUI

struct ButtonView: View {
    
    var buttonText: String
    var buttonColour: Color
    var onTapped: () -> Void
    
    var body: some View {
        ZStack {
            buttonColour
                .cornerRadius(10)
                
            Text(buttonText)
                .foregroundColor(.white)
        }
        .frame(height: 50)
        .padding(.horizontal, 12)
        .padding(.bottom, 12)
        .onTapGesture {
            onTapped()
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonText: "Test", buttonColour: Color.gray, onTapped: {})
    }
}
