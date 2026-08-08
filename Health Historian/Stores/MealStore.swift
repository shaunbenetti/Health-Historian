//
//  MealStore.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

//
//  MealStore.swift
//  Health Historian
//

import Foundation
import Observation
import SwiftData

@Observable
final class MealStore {

    private(set) var meals: [Meal] = []

    func load(from modelContext: ModelContext) {

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

    func add(_ meal: Meal) {

        meals.insert(meal, at: 0)

    }

    func delete(_ meal: Meal, from modelContext: ModelContext) {

        modelContext.delete(meal)

        do {

            try modelContext.save()

            meals.removeAll { $0 == meal }

        } catch {

            print("Failed to delete meal: \(error)")

        }

    }

    // MARK: - History

    var mealsByDay: [(date: Date, meals: [Meal])] {

        let calendar = Calendar.current

        let grouped = Dictionary(grouping: meals) { meal in
            calendar.startOfDay(for: meal.timestamp)
        }

        return grouped
            .map { (date: $0.key, meals: $0.value) }
            .sorted { $0.date > $1.date }

    }

}
