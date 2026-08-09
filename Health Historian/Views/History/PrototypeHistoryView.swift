//
//  PrototypeHistoryView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import SwiftUI

struct PrototypeHistoryView: View {

    let mealStore: MealStore

    @State
    private var workouts: [WorkoutEvent] = []

    var body: some View {

        NavigationStack {

            List {

                Section("Meals") {

                    ForEach(mealStore.meals) { meal in

                        MealRow(meal: meal)

                    }

                }

                Section("Workouts") {

                    ForEach(workouts) { workout in

                        WorkoutRow(workout: workout)

                    }

                }

            }
            .navigationTitle("Prototype")
            .task {

                do {

                    workouts = try await HealthKitService.shared.recentWorkouts(limit: 10)

                } catch {

                    print(error)

                }

            }

        }

    }

}

#Preview {

    PrototypeHistoryView(
        mealStore: MealStore()
    )

}
