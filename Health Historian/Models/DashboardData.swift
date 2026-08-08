//
//  DashboardData.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Represents all information displayed on the dashboard.
///
struct DashboardData {

    let glucose: Int
    let trend: String
    let updated: String

    let sleep: String
    let hrv: String
    let workout: String
    let weight: String

    let meals: [Meal]

    let notes: String

}
