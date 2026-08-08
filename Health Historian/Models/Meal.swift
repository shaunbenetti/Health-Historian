//
//  Meal.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Represents a meal consisting of one or more foods.
///
struct Meal: Identifiable {

    let id = UUID()

    var category: MealCategory

    var timestamp: Date

    var items: [MealItem]

    var notes: String

}
extension Meal {

    var displayTitle: String {

        category.title

    }

}
