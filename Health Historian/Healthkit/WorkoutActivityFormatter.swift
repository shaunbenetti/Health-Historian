//
//  WorkoutActivityFormatter.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import HealthKit

enum WorkoutActivityFormatter {

    static func title(for activity: HKWorkoutActivityType) -> String {

        switch activity {

        case .crossTraining:
            return "Cross Training"

        case .rowing:
            return "Rowing"

        case .running:
            return "Running"

        case .walking:
            return "Walking"

        default:
            return "Workout"

        }

    }

}
