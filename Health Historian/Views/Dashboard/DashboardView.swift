//
//  ContentView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

///
/// Main dashboard displayed when the app launches.
///
/// This view presents today's health summary and serves as
/// the primary landing page for Health Historian.
///
struct DashboardView: View {
    
    private let viewModel = DashboardViewModel()
    
    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(alignment: .leading, spacing: 24) {

                    GreetingView()
                    
                    HeroGlucoseCard(
                        glucose: viewModel.dashboard.glucose,
                        trend: viewModel.dashboard.trend,
                        updated: viewModel.dashboard.updated
                    )

                    SectionHeader(
                        "Today's Metrics",
                        subtitle: "Your health at a glance"
                    )

                    LazyVGrid(
                        columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ],
                        spacing: 16
                    ) {

                        MetricTile(
                            title: "Sleep",
                            value: viewModel.dashboard.sleep,
                            icon: "bed.double.fill",
                            color: AppColors.sleep
                        )

                        MetricTile(
                            title: "HRV",
                            value: viewModel.dashboard.hrv,
                            icon: "heart.fill",
                            color: .pink
                        )

                        MetricTile(
                            title: "Workout",
                            value: viewModel.dashboard.workout,
                            icon: "figure.strengthtraining.traditional",
                            color: AppColors.workout
                        )

                        MetricTile(
                            title: "Weight",
                            value: viewModel.dashboard.weight,
                            icon: "scalemass.fill",
                            color: .orange
                        )

                    }

                    Text("Meals Today")
                        .font(AppFonts.sectionTitle)

                    DashboardCard(
                        title: "Meals",
                        value: viewModel.dashboard.meals
                            .map { $0.displayTitle }
                            .joined(separator: "\n"),
                        icon: "fork.knife",
                        color: .brown
                    )

                    Text("Today's Notes")
                        .font(AppFonts.sectionTitle)

                    DashboardCard(
                        title: "Notes",
                        value: viewModel.dashboard.notes,
                        icon: "note.text",
                        color: .blue
                    )

                }
                .padding()

            }
            .navigationBarHidden(true)

        }

    }

}

#Preview {
    DashboardView()
}
