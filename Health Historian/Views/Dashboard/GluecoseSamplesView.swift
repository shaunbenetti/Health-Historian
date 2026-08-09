//
//  DebugGlucoseView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/9/26.
//

import SwiftUI

struct DebugGlucoseView: View {

    @State
    private var samples: [GlucoseSample] = []

    @State
    private var errorMessage: String?

    var body: some View {

        NavigationStack {

            List {

                if let errorMessage {

                    Text(errorMessage)
                        .foregroundStyle(.red)

                }

                ForEach(samples) { sample in

                    GlucoseRow(sample: sample)

                

            }
            }
            .navigationTitle("Glucose Debug")
            .task {

                if !HealthKitService.shared.isAuthorized {

                    await HealthKitService.shared.requestAuthorization()

                }

                do {

                    samples = try await HealthKitService.shared
                        .recentGlucoseSamples(limit: 1)

                } catch {

                    errorMessage = error.localizedDescription

                }

            }
        }

    }

}

#Preview {

    DebugGlucoseView()

}
