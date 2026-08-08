//
//  MockDashboardService.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Mock implementation of DashboardService.
///
final class MockDashboardService: DashboardService {

    private let mealService = MockMealService()

    func loadDashboard() -> DashboardData {

        DashboardData(

            glucose: 96,
            trend: "Stable",
            updated: "Just now",

            sleep: "7h 42m",
            hrv: "58 ms",
            workout: "CrossFit",
            weight: "178 lb",

            meals: mealService.loadMeals(),

            notes: "Feeling great after today's CrossFit workout."

        )

    }

}
