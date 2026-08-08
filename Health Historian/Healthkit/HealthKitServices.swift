//
//  HealthKitServices.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation
import HealthKit
import Observation

@Observable
final class HealthKitService {

    static let shared = HealthKitService()

    private let healthStore = HKHealthStore()

    var isAuthorized = false

    private init() { }

    // MARK: - Authorization

    func requestAuthorization() async {

        guard HKHealthStore.isHealthDataAvailable() else {
            return
        }

        let readTypes: Set<HKObjectType> = [
            HKObjectType.workoutType()
        ]

        do {

            try await healthStore.requestAuthorization(
                toShare: [],
                read: readTypes
            )

            isAuthorized = true

        } catch {

            print("HealthKit authorization failed: \(error)")
            isAuthorized = false

        }

    }

    // MARK: - Workouts

    func recentWorkouts(limit: Int = 25) async throws -> [HKWorkout] {

        let workoutType = HKObjectType.workoutType()

        let sortDescriptor = NSSortDescriptor(
            key: HKSampleSortIdentifierStartDate,
            ascending: false
        )

        return try await withCheckedThrowingContinuation { continuation in

            let query = HKSampleQuery(
                sampleType: workoutType,
                predicate: nil,
                limit: limit,
                sortDescriptors: [sortDescriptor]
            ) { _, samples, error in

                if let error {

                    continuation.resume(throwing: error)
                    return

                }

                let workouts = samples as? [HKWorkout] ?? []

                continuation.resume(returning: workouts)

            }

            self.healthStore.execute(query)

        }

    }

}
