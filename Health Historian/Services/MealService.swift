//
//  MealService.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Provides meals to the application.
///
protocol MealService {

    func loadMeals() -> [Meal]

}
