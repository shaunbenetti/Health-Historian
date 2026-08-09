//
//  Health_HistorianApp.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI
import SwiftData

@main
struct Health_HistorianApp: App {

    @State
    private var mealStore = MealStore()

    @State
    private var historyStore = HistoryStore()

    var body: some Scene {

        WindowGroup {

            MainTabView(
                mealStore: mealStore,
                historyStore: historyStore
            )

        }
        .modelContainer(for: [
            Meal.self,
            MealItem.self
        ])

    }

}
