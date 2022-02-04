//
//  NavSwitches.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 05/01/2022.
//

import Foundation
import SwiftUI

class NavSwitches: ObservableObject {
    
    //onboarding
    @Published var onboardingNavBarHidden = true
    @Published var onboardingFirstToSecond = false
    @Published var onboardingSecondToThird = false
    @Published var onboardingThirdToTabView = false
    @Published var onboardingToTabView = false
    
    //first tab
    @Published var firstTabRootToSecond = false
    @Published var firstTabSecondToThird = false
    
    //second tab
    @Published var secondTabRootToSecond = false
    @Published var secondTabSecondToThird = false
    
    @Published var tabViewSelection = 0
    
    func onboardingToRoot() {
        onboardingNavBarHidden = true
        onboardingFirstToSecond = false
        onboardingSecondToThird = false
        onboardingThirdToTabView = false
        onboardingToTabView = false
    }
    
    func firstTabToRoot() {
        firstTabRootToSecond = false
        firstTabSecondToThird = false
    }
    
    func secondTabToRoot() {
        secondTabRootToSecond = false
        secondTabSecondToThird = false
    }
    /*
    func goToTabView() {
        firstTabToRoot()
        secondTabToRoot()
        onboardingFirstToSecond = true
        onboardingSecondToThird = true
        onboardingThirdToTabView = true
    }*/
    
    /*
    func goToFinalViewOnSecondTab() {
        goToTabView()
        secondTabRootToSecond = true
        secondTabSecondToThird = true
    }*/
}
