//
//  OnboardingFirst.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 05/01/2022.
//

import SwiftUI

struct OnboardingFirst: View {
    
    @EnvironmentObject var navSwitches: NavSwitches
    @State var showNavPanel = false
    
    var body: some View {
        ZStack {
            //main navigation through onboarding on to tab view
            NavigationView {
                VStack {
                    CardView(text: "First Onboarding View",
                             backgroundColour: .gray)
                    
                    ButtonView(buttonText: "Next",
                               buttonColour: .green) {
                        navSwitches.onboardingFirstToSecond = true
                    }

                    NavigationLink(destination: OnboardingSecond(),
                                   isActive: $navSwitches.onboardingFirstToSecond) {
                        EmptyView()
                    }.isDetailLink(false)
                }
            }.navigationBarHidden(navSwitches.onboardingNavBarHidden)
            
            //settings icon top right, to open nav panel
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "gearshape")
                            .resizable()
                            .foregroundColor(.gray)
                            .frame(width: 40, height: 40)
                            .padding()
                            .onTapGesture {
                                withAnimation(.easeInOut) {
                                    showNavPanel.toggle()
                                }
                            }
                    }
                    Spacer()
                }
                if showNavPanel {
                    VStack {
                        NavPanel()
                            .padding(.trailing, 50)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct OnboardingFirst_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFirst()
            .environmentObject(NavSwitches())
    }
}
