//
//  EventRow.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import SwiftUI

struct EventRow: View {

    let icon: String
    let iconColor: Color

    let title: String
    let subtitle: String

    let timestamp: Date

    var body: some View {

        HStack(alignment: .top, spacing: 12) {

            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(iconColor)
                .frame(width: 28)

            VStack(alignment: .leading, spacing: 4) {

                Text(title)
                    .font(.headline)

                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

            }

            Spacer()

            Text(
                timestamp.formatted(
                    date: .omitted,
                    time: .shortened
                )
            )
            .font(.caption)
            .foregroundStyle(.secondary)

        }
        .padding(.vertical, 6)

    }

}

#Preview {

    EventRow(
        icon: "figure.strengthtraining.traditional",
        iconColor: .orange,
        title: "Cross Training",
        subtitle: "51 min • 471 kcal",
        timestamp: .now
    )

}
