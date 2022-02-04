//
//  TestNavigationApp.swift
//  TestNavigationApp
//
//  Created by Luke Smith on 05/01/2022.
//

import SwiftUI

@main
struct TestNavigationApp: App {
    
    @StateObject private var navSwitches = NavSwitches()
     
    var body: some Scene {
        WindowGroup {
            OnboardingFirst()
                .environmentObject(navSwitches)
        }
    }
}
