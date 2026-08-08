//
//  SettingsView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI

struct SettingsView: View {

    var body: some View {

        NavigationStack {

            ContentUnavailableView(
                "Settings",
                systemImage: "gearshape.fill",
                description: Text("Application settings will be available here.")
            )

        }

    }

}

#Preview {
    SettingsView()
}
