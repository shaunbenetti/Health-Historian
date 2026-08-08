//
//  ContentView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(alignment: .leading, spacing: 20) {

                    Text("Today")
                        .font(AppFonts.title)

                    DashboardCard(
                        title: "Glucose",
                        value: "96 mg/dL",
                        icon: "drop.fill",
                        color: AppColors.glucose
                    )

                    HStack {

                        DashboardCard(
                            title: "Sleep",
                            value: "7h 42m",
                            icon: "bed.double.fill",
                            color: AppColors.sleep
                        )

                        DashboardCard(
                            title: "Workout",
                            value: "CrossFit",
                            icon: "figure.strengthtraining.traditional",
                            color: AppColors.workout
                        )

                    }

                }
                .padding()

            }

            .navigationTitle("Health Historian")

        }

    }

}

#Preview {
    ContentView()
}
