//
//  HistoryView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

struct HistoryView: View {

    var body: some View {

        NavigationStack {

            ContentUnavailableView(
                "History",
                systemImage: "calendar",
                description: Text("Historical data will appear here.")
            )

        }

    }

}

#Preview {
    HistoryView()
}
