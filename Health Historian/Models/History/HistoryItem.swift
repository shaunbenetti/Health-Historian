//
//  HistoryItem.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation
import SwiftData

enum HistoryItem: Identifiable {

    case meal(Meal)
    case workout(WorkoutEvent)

    var id: String {

        switch self {

        case .meal(let meal):
            return "meal-\(meal.persistentModelID)"

        case .workout(let workout):
            return "workout-\(workout.id.uuidString)"

        }

    }

    var timestamp: Date {

        switch self {

        case .meal(let meal):
            return meal.timestamp

        case .workout(let workout):
            return workout.timestamp

        }

    }

}
