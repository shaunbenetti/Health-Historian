//
//  HistoryView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI
import SwiftData

struct HistoryView: View {

    let historyStore: HistoryStore

    @Environment(\.modelContext)
    private var modelContext

    @State
    private var hasLoaded = false

    var body: some View {

        NavigationStack {

            List {

                ForEach(historyStore.timeline) { event in

                    switch event {

                    case .meal(let meal):

                        NavigationLink {

                            MealDetailView(meal: meal)

                        } label: {

                            MealRow(meal: meal)

                        }

                    case .workout(let workout):

                        WorkoutRow(workout: workout)

                    }

                }

            }
            .navigationTitle("History")
            .toolbar {

                if !HealthKitService.shared.isAuthorized {

                    Button("Connect") {

                        Task {
                            await HealthKitService.shared.requestAuthorization()
                        }

                    }

                }

            }
            .onAppear {

                guard !hasLoaded else { return }

                hasLoaded = true

                Task {

                    await historyStore.reload(from: modelContext)

                }

            }

        }

    }

}

#Preview {

    HistoryView(
        historyStore: HistoryStore()
    )

}
