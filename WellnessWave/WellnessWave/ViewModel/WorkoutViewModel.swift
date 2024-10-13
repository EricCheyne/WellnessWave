//
//  WorkoutViewModel.swift
//  WellnessWave
//
//  Created by Eric Cheyne on 10/12/24.
//

import SwiftUI

class WorkoutViewModel: ObservableObject {
    @Published var workouts: [Workout] = [
        Workout(name: "Morning Run", duration: 30, caloriesBurned: 300, type: .cardio),
        Workout(name: "Weight Training", duration: 45, caloriesBurned: 500, type: .strength)
    ]
    
    func startWorkout(_ workout: Workout) {
        // Code to start workout
    }
    
    func fetchStats() {
        // Code to fetch workout stats
    }
}
