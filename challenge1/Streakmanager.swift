//
//  Streakmanager.swift
//  challenge1
//
//  Created by Nouf on 08/10/2024.
//

import Combine
import SwiftUI

class StreakManager: ObservableObject {
    @Published var didTapButton: Bool = false
    @Published var streak: Int = 0
    @Published var isDone: [Bool] = [false, false, false, false, false, false, false]
    let days: [String] = ["S", "M", "T", "W", "T", "F", "S"]

    var currentDayIndex: Int {
        let today = Calendar.current.component(.weekday, from: Date()) - 1
        return today
    }
    
    func toggleStreak() {
           // Toggle the current day's streak status
           isDone[currentDayIndex].toggle()
           
           // Update the streak count
           streak = isDone.filter { $0 }.count
       }

//    func incrementStreak() {
//        if !isDone[currentDayIndex] {
//            isDone[currentDayIndex] = true
//            streak = isDone.filter { $0 }.count
//        }
//    }
}
