//
//  WorkoutEvent.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

struct WorkoutEvent: Identifiable {

    let id: UUID

    let timestamp: Date

    let activity: String

    let duration: TimeInterval

    let activeCalories: Double?

}

// MARK: - Presentation

extension WorkoutEvent {

    /// Rounded workout duration in whole minutes.
    var durationMinutes: Int {
        Int((duration / 60).rounded())
    }

    /// Rounded active calories.
    var calories: Int? {
        activeCalories.map { Int($0.rounded()) }
    }

    /// Short duration text for the UI.
    var durationText: String {
        "\(durationMinutes) min"
    }

    /// Short calorie text for the UI.
    var caloriesText: String? {

        guard let calories else {
            return nil
        }

        return "\(calories) kcal"

    }

}
