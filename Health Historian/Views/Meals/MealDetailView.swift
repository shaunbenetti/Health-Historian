//
//  MealDetailView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import SwiftUI

struct MealDetailView: View {

    let meal: Meal

    var body: some View {

        List {

            Section("Meal") {

                LabeledContent("Category") {
                    Text(meal.category.title)
                }

                LabeledContent("Date") {
                    Text(meal.timestamp.formatted(
                        date: .abbreviated,
                        time: .shortened
                    ))
                }

            }

            Section("Foods") {

                ForEach(meal.items) { item in

                    Text(item.name)

                }

            }

            if !meal.notes.isEmpty {

                Section("Notes") {

                    Text(meal.notes)

                }

            }

        }
        .navigationTitle("Meal")
        .navigationBarTitleDisplayMode(.inline)

    }

}

#Preview {

    NavigationStack {

        MealDetailView(
            meal: Meal(
                category: .breakfast,
                timestamp: .now,
                items: [
                    MealItem(name: "Eggs"),
                    MealItem(name: "Bacon"),
                    MealItem(name: "Coffee")
                ],
                notes: "Fasted 16 hours."
            )
        )

    }

}
