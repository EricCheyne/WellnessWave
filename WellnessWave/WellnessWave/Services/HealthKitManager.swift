//
//  HealthKitManager.swift
//  WellnessWave
//
//  Created by Eric Cheyne on 10/12/24.
//

import Foundation
import HealthKit

class HealthKitManager {
    static let shared = HealthKitManager()
    private let healthStore = HKHealthStore()
    
    func requestAuthorization(completion: @escaping (Bool) -> Void) {
        let readTypes = Set([
            HKObjectType.workoutType(),
            HKObjectType.quantityType(forIdentifier: .heartRate)!
        ])
        
        healthStore.requestAuthorization(toShare: nil, read: readTypes) { success, error in
            completion(success)
        }
    }
    
    func saveWorkout(workout: Workout, completion: @escaping (Bool) -> Void) {
        // Code to save workout to HealthKit
    }
    
    func fetchWorkouts(completion: @escaping ([HKWorkout]) -> Void) {
        // Code to fetch workouts from HealthKit
    }
}
