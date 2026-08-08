//
//  HeroGlucoseCard.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

///
/// Displays the current glucose reading in a prominent hero card.
///
struct HeroGlucoseCard: View {

    let glucose: Int
    let trend: String
    let updated: String

    var body: some View {

        VStack(spacing: 16) {

            Text("Current Glucose")
                .font(AppFonts.cardTitle)
                .foregroundStyle(AppColors.textSecondary)

            VStack(spacing: 0) {

                Text("\(glucose)")
                    .font(.system(size: 64, weight: .bold))

                Text("mg/dL")
                    .font(.headline)
                    .foregroundStyle(AppColors.textSecondary)

            }

            HStack(spacing: 8) {

                Image(systemName: "arrow.up.right")

                Text(trend)

            }
            .font(.headline)
            .foregroundStyle(.green)

            Text("Updated \(updated)")
                .font(.caption)
                .foregroundStyle(AppColors.textSecondary)

        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 30)
        .background(AppColors.cardBackground)
        .clipShape(RoundedRectangle(cornerRadius: 24))

    }

}

#Preview {

    HeroGlucoseCard(
        glucose: 96,
        trend: "Stable",
        updated: "Just now"
    )

}
