//
//  MockMealRepository.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

final class MockMealRepository: MealRepository {

    private let mealService: MealService

    init(mealService: MealService = MockMealService()) {

        self.mealService = mealService

    }

    func loadMeals() -> [Meal] {

        mealService.loadMeals()

    }

}
