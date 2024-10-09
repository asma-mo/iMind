//
//  challenge1App.swift
//  challenge1
//
//  Created by Asma on 29/09/2024.
//

import SwiftUI

@main
struct challenge1App: App {
    @StateObject var streakManager = StreakManager()
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
