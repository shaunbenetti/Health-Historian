//
//  MockMealServices.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

final class MockMealService {

    func loadMeals() -> [Meal] {

        [

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

    }

}
