//
//  MealCategory.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Categories used to group meals.
///
enum MealCategory: String, CaseIterable, Identifiable {

    case breakfast
    case lunch
    case dinner
    case snack

    var id: Self { self }

    var title: String {

        switch self {

        case .breakfast:
            return "Breakfast"

        case .lunch:
            return "Lunch"

        case .dinner:
            return "Dinner"

        case .snack:
            return "Snack"

        }

    }

}
