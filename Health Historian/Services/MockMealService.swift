//
//  MockMealService.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

final class MockMealService: MealService {

    func loadMeals() -> [Meal] {

        [

            Meal(
                category: .breakfast,
                timestamp: Date(),
                items: [

                    MealItem(name: "Eggs"),
                    MealItem(name: "Coffee"),
                    MealItem(name: "Butter")

                ],
                notes: "Pre-CrossFit"
            ),

            Meal(
                category: .dinner,
                timestamp: Date(),
                items: [

                    MealItem(name: "Ribeye Steak"),
                    MealItem(name: "Butter")

                ],
                notes: "Post workout"
            )

        ]

    }

}
