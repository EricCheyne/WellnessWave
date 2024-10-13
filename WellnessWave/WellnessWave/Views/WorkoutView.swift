//
//  WorkOutView.swift
//  WellnessWave
//
//  Created by Eric Cheyne on 10/12/24.
//

import SwiftUI

struct WorkoutView: View {
    @State private var selectedWorkout: Workout?
    @StateObject var workoutViewModel = WorkoutViewModel()

    var body: some View {
        VStack {
            Text("Select a Workout")
                .font(.headline)
                .padding()

            List(workoutViewModel.workouts) { workout in
                Button(action: {
                    selectedWorkout = workout
                    workoutViewModel.startWorkout(workout)
                }) {
                    Text(workout.name)
                        .font(.title2)
                        .padding()
                }
            }
            
            if let selected = selectedWorkout {
                Text("Selected: \(selected.name)")
                    .padding()
            }
        }
        .navigationTitle("Workouts")
    }
}
