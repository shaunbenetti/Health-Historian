//
//  WorkoutRow.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import SwiftUI

struct WorkoutRow: View {

    let workout: WorkoutEvent

    var body: some View {

        EventRow(
            icon: "figure.strengthtraining.traditional",
            iconColor: .orange,
            title: workout.activity,
            subtitle: workoutSubtitle,
            timestamp: workout.timestamp
        )

    }

}

// MARK: - Helpers

private extension WorkoutRow {

    var workoutSubtitle: String {

        if let calories = workout.calories {

            return "\(workout.durationMinutes) min • \(calories) kcal"

        }

        return "\(workout.durationMinutes) min"

    }

}

#Preview {

    WorkoutRow(
        workout: WorkoutEvent(
            id: UUID(),
            timestamp: .now,
            activity: "Cross Training",
            duration: 3060,
            activeCalories: 471
        )
    )

}
