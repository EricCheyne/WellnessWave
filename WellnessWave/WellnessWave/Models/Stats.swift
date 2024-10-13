//
//  Stats.swift
//  WellnessWave
//
//  Created by Eric Cheyne on 10/12/24.
//

import Foundation

struct Stat: Identifiable {
    let id = UUID()
    let day: String
    let caloriesBurned: Int
}
