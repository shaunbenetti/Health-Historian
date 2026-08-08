//
//  GreetingView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

///
/// Displays a greeting based on the current time.
///
struct GreetingView: View {

    private var greeting: String {

        let hour = Calendar.current.component(.hour, from: Date())

        switch hour {

        case 5..<12:
            return "Good Morning"

        case 12..<17:
            return "Good Afternoon"

        default:
            return "Good Evening"

        }

    }

    var body: some View {

        VStack(alignment: .leading, spacing: 4) {

            Text(greeting)
                .font(.title3.weight(.semibold))
                .foregroundStyle(AppColors.textSecondary)

            Text("Health Historian")
                .font(AppFonts.title)

        }

        .frame(maxWidth: .infinity, alignment: .leading)

    }

}

#Preview {

    GreetingView()

}
