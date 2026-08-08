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

}
