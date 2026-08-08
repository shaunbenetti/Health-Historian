//
//  MealItem.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Represents a single food within a meal.
///
struct MealItem: Identifiable {

    let id = UUID()

    var name: String

    var quantity: Double?

    var unit: String?

}
