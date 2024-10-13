//
//  statsViewModel.swift
//  WellnessWave
//
//  Created by Eric Cheyne on 10/12/24.
//

import SwiftUI

class StatsViewModel: ObservableObject {
    @Published var stats: [Stat] = []

    func loadStats() {
        // Code to load stats data (e.g., calories burned)
        stats = [
            Stat(day: "Mon", caloriesBurned: 300),
            Stat(day: "Tue", caloriesBurned: 400),
            Stat(day: "Wed", caloriesBurned: 350),
            Stat(day: "Thu", caloriesBurned: 500)
        ]
    }
}
