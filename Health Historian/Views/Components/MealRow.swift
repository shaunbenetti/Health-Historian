//
//  MealRow.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import SwiftUI

struct MealRow: View {

    let meal: Meal

    var body: some View {

        HStack(alignment: .top, spacing: 16) {

            Image(systemName: iconName)
                .font(.title2)
                .foregroundStyle(iconColor)
                .frame(width: 30)

            VStack(alignment: .leading, spacing: 6) {

                Text(meal.displayTitle)
                    .font(.headline)

                Text(foodSummary)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Text(meal.timestamp, style: .time)
                    .font(.caption)
                    .foregroundStyle(.secondary)

            }

            Spacer()

        }
        .padding(.vertical, 6)

    }

}
extension Meal {

    var displayTitle: String {
        category.title
    }

}
private extension MealRow {

    var foodSummary: String {

        meal.items
            .prefix(3)
            .map(\.name)
            .joined(separator: " • ")

    }

    var iconName: String {

        switch meal.category {

        case .breakfast:
            return "sunrise.fill"

        case .lunch:
            return "sun.max.fill"

        case .dinner:
            return "moon.stars.fill"

        case .snack:
            return "leaf.fill"

        }

    }

    var iconColor: Color {

        switch meal.category {

        case .breakfast:
            return .orange

        case .lunch:
            return .yellow

        case .dinner:
            return .indigo

        case .snack:
            return .green

        }

    }

}
