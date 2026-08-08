//
//  SectionHeader.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

///
/// A reusable section header used throughout the app.
///
struct SectionHeader: View {

    let title: String
    let subtitle: String?

    init(_ title: String, subtitle: String? = nil) {
        self.title = title
        self.subtitle = subtitle
    }

    var body: some View {

        VStack(alignment: .leading, spacing: 4) {

            Text(title)
                .font(AppFonts.sectionTitle)

            if let subtitle {
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(AppColors.textSecondary)
            }

        }
        .frame(maxWidth: .infinity, alignment: .leading)

    }

}

#Preview {

    SectionHeader(
        "Today's Metrics",
        subtitle: "Your health at a glance"
    )

}
