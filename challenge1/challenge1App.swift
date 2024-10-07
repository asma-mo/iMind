//
//  challenge1App.swift
//  challenge1
//
//  Created by Asma on 29/09/2024.
//

import SwiftUI

@main
struct challenge1App: App {
    @State private var isNewUser = !UserDefaults.standard.bool(forKey: "hasSeenOnboarding")
        
    
    @State var isShowingSplash = true
    var body: some Scene {
        WindowGroup {
            if isNewUser {
                OnboardingViews(isNewUser: $isNewUser)
            } else {
                MainView(isShowingSplash: .constant(false)) 
            }
        }
    }
}
