//
//  MealStore.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation
import Observation

@Observable
final class MealStore {

    var meals: [Meal]

    private let repository: MealRepository

    init(repository: MealRepository = MockMealRepository()) {

        self.repository = repository
        self.meals = repository.loadMeals()

    }

    func add(_ meal: Meal) {

        meals.append(meal)

    }

}
