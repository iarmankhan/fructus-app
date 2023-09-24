//
//  FructusApp.swift
//  Fructus
//
//  Created by Arman Khan on 23/09/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if isOnboarding {
                    OnboardingView()
                } else {
                    ContentView()
                }
            }
            .animation(.easeOut(duration: 0.5), value: isOnboarding)
        }
    }
}
