//
//  DashboardCard.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

struct DashboardCard: View {

    let title: String
    let value: String
    let icon: String
    let color: Color

    var body: some View {

        VStack(alignment: .leading, spacing: 12) {

            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(color)

            Text(title)
                .font(.headline)

            Text(value)
                .font(.title2)
                .bold()

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(16)

    }

}

#Preview {

    DashboardCard(
        title: "Glucose",
        value: "96 mg/dL",
        icon: "drop.fill",
        color: .red
    )

}
