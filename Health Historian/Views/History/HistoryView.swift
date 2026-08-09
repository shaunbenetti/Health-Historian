//
//  HistoryView.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import SwiftUI
import SwiftData

struct HistoryView: View {

    let mealStore: MealStore

    @Environment(\.modelContext)
    private var modelContext

    @State
    private var hasLoaded = false

    var body: some View {

        NavigationStack {

            List {

                ForEach(mealStore.mealsByDay, id: \.date) { day in

                    Section(sectionTitle(for: day.date)) {

                        ForEach(day.meals) { meal in

                            NavigationLink {

                                MealDetailView(meal: meal)

                            } label: {

                                MealRow(meal: meal)

                            }

                        }

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

                mealStore.load(from: modelContext)

                hasLoaded = true

                }

            }

        }

    }

    // MARK: - Helpers

    private func sectionTitle(for date: Date) -> String {

        let calendar = Calendar.current

        if calendar.isDateInToday(date) {
            return "Today"
        }

        if calendar.isDateInYesterday(date) {
            return "Yesterday"
        }

        return date.formatted(.dateTime.month().day().year())

    }

#Preview {

    HistoryView(
        mealStore: MealStore()
    )

}
