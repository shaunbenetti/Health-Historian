//
//  TimelineView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import SwiftUI

struct TimelineView: View {

    let mealStore: MealStore

    var body: some View {

        NavigationStack {

            List {

                ForEach(mealStore.meals) { meal in

                    NavigationLink {

                        MealDetailView(meal: meal)

                    } label: {

                        MealRow(meal: meal)

                    }

                }

            }
            .navigationTitle("Timeline")

        }

    }

}

#Preview {

    TimelineView(
        mealStore: MealStore()
    )

}
