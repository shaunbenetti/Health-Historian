//
//  MetricTile.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

///
/// A compact tile used to display a single health metric.
///
struct MetricTile: View {

    let title: String
    let value: String
    let icon: String
    let color: Color

    var body: some View {

        VStack(alignment: .leading, spacing: 10) {

            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(color)

            Text(title)
                .font(.subheadline)
                .foregroundStyle(AppColors.textSecondary)

            Spacer()

            Text(value)
                .font(.title2.bold())
                .foregroundStyle(AppColors.textPrimary)

        }
        .frame(maxWidth: .infinity)
        .frame(height: 130)
        .padding()

        .background(AppColors.cardBackground)

        .clipShape(RoundedRectangle(cornerRadius: 20))

    }

}

#Preview {

    MetricTile(
        title: "Sleep",
        value: "7h 42m",
        icon: "bed.double.fill",
        color: AppColors.sleep
    )

}
