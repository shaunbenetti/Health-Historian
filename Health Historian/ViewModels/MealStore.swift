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

    func delete(_ meal: Meal) {

        meals.removeAll { $0 == meal }

    }

}
