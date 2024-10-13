//
//  StatsView.swift
//  WellnessWave
//
//  Created by Eric Cheyne on 10/12/24.
//

import SwiftUI
import Charts // If you're using Charts for stats visualization

struct StatsView: View {
    @StateObject private var statsViewModel = StatsViewModel() // Instantiate ViewModel
    
    var body: some View {
        VStack {
            Text("Weekly Stats")
                .font(.largeTitle)
                .padding()

            Chart(statsViewModel.stats) { stat in
                LineMark(
                    x: .value("Day", stat.day),
                    y: .value("Calories", stat.caloriesBurned)
                )
                .foregroundStyle(.blue)
            }
            .frame(height: 200)
            .padding()

            Spacer()
        }
        .onAppear {
            statsViewModel.loadStats() // Load stats on view appear
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
