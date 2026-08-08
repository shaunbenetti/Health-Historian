//
//  MealsViewModel.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Supplies meal data to the Meals screen.
///
final class MealsViewModel {

    private let service: MealService

    let meals: [Meal]

    init(service: MealService = MockMealService()) {

        self.service = service
        self.meals = service.loadMeals()

    }

}
