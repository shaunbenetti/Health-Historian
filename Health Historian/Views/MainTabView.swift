//
//  MainTabView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

///
/// Main application navigation.
///
/// Hosts all primary tabs for Health Historian.
///
struct MainTabView: View {

    var body: some View {

        TabView {

            DashboardView()
                .tabItem {
                    Label("Dashboard",
                          systemImage: "house.fill")
                }

            MealsView()
                .tabItem {
                    Label("Meals",
                          systemImage: "fork.knife")
                }

            AnalyticsView()
                .tabItem {
                    Label("Analytics",
                          systemImage: "chart.xyaxis.line")
                }

            HistoryView()
                .tabItem {
                    Label("History",
                          systemImage: "calendar")
                }

            SettingsView()
                .tabItem {
                    Label("Settings",
                          systemImage: "gearshape.fill")
                }

        }

    }

}

#Preview {
    MainTabView()
}
