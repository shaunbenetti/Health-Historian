//
//  Meal.swift
//  Health Historian
//

import Foundation
import SwiftData

@Model
final class Meal {

    var category: MealCategory

    var timestamp: Date

    var items: [MealItem]

    var notes: String

    init(
        category: MealCategory,
        timestamp: Date,
        items: [MealItem],
        notes: String
    ) {

        self.category = category
        self.timestamp = timestamp
        self.items = items
        self.notes = notes

    }

}
