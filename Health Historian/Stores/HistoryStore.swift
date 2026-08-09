//
//  HistoryStore.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation
import SwiftData
import Observation

@Observable
final class HistoryStore {

    private(set) var meals: [Meal] = []

    private(set) var workouts: [WorkoutEvent] = []

    func loadMeals(from modelContext: ModelContext) {

        let descriptor = FetchDescriptor<Meal>(
            sortBy: [
                SortDescriptor(\.timestamp, order: .reverse)
            ]
        )

        do {

            meals = try modelContext.fetch(descriptor)

        } catch {

            print("Failed to load meals: \(error)")
            meals = []

        }

    }
    func loadWorkouts() async {

        do {

            workouts = try await HealthKitService.shared.recentWorkouts(limit: 100)

        } catch {

            print("Failed to load workouts: \(error)")
            workouts = []

        }

    }

    func reload(from modelContext: ModelContext) async {

        loadMeals(from: modelContext)

        await loadWorkouts()

    }
    var timeline: [TimelineEvent] {

        let mealEvents = meals.map {
            TimelineEvent.meal($0)
        }

        let workoutEvents = workouts.map {
            TimelineEvent.workout($0)
        }

        return (mealEvents + workoutEvents)
            .sorted { $0.timestamp > $1.timestamp }

    }
}
