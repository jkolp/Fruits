//
//  fructusApp.swift
//  fructus
//
//  Created by Jasper K on 9/24/21.
//

import SwiftUI

@main
struct fructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
