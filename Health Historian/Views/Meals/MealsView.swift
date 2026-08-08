//
//  MealsView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

struct MealsView: View {

    @State private var mealStore = MealStore()

    @State private var showingAddMeal = false

    var body: some View {

        NavigationStack {

            List(mealStore.meals) { meal in

                MealRow(meal: meal)

            }
            .navigationTitle("Meals")

            .toolbar {

                Button {

                    showingAddMeal = true

                } label: {

                    Image(systemName: "plus")

                }

            }
            .sheet(isPresented: $showingAddMeal) {

                AddMealView(mealStore: mealStore)

            }

        }

    }

}

