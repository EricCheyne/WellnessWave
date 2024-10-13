//
//  Workout.swift
//  WellnessWave
//
//  Created by Eric Cheyne on 10/12/24.
//

import Foundation

struct Workout: Identifiable {
    let id = UUID()
    let name: String
    let duration: Int // in minutes
    let caloriesBurned: Int
    let type: WorkoutType
    
    enum WorkoutType: String {
        case cardio, strength, flexibility
    }
}
