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
                .foregroundStyle(color)

            Text(title)
                .font(AppFonts.cardTitle)
                .foregroundStyle(AppColors.textPrimary)

            Text(value)
                .font(AppFonts.cardValue)
                .foregroundStyle(AppColors.textPrimary)

        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()

        .background(AppColors.cardBackground)

        .clipShape(RoundedRectangle(cornerRadius: 18))

    }

}

#Preview {

    DashboardCard(
        title: "Glucose",
        value: "96 mg/dL",
        icon: "drop.fill",
        color: AppColors.glucose
    )

}
