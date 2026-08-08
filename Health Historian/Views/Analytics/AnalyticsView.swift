//
//  AnalyticsView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

struct AnalyticsView: View {

    var body: some View {

        NavigationStack {

            ContentUnavailableView(
                "Analytics",
                systemImage: "chart.xyaxis.line",
                description: Text("Analytics arrive in Sprint 5.")
            )

        }

    }

}

#Preview {
    AnalyticsView()
}
