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

@Observable
final class MealStore {

    private(set) var meals: [Meal] = []

    init() {

        loadSampleData()

    }

    func add(_ meal: Meal) {

        meals.append(meal)

        sortMeals()

    }

    func delete(_ meal: Meal) {

        meals.removeAll { $0 == meal }

    }

}

// MARK: - Private

private extension MealStore {

    func loadSampleData() {

        meals = [

            Meal(
                category: .breakfast,
                timestamp: .now.addingTimeInterval(-3600 * 4),
                items: [
                    MealItem(name: "Eggs"),
                    MealItem(name: "Coffee"),
                    MealItem(name: "Butter")
                ],
                notes: ""
            ),

            Meal(
                category: .dinner,
                timestamp: .now.addingTimeInterval(-3600 * 10),
                items: [
                    MealItem(name: "Ribeye"),
                    MealItem(name: "Butter")
                ],
                notes: ""
            )

        ]

        sortMeals()

    }

    func sortMeals() {

        meals.sort {

            $0.timestamp > $1.timestamp

        }

    }

}
