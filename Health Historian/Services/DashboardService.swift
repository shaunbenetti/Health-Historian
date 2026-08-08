//
//  DashboardService.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Provides dashboard information.
///
/// For Sprint 1.5 this returns mock data.
/// Later it will coordinate HealthKit and SwiftData.
///
protocol DashboardService {

    func loadDashboard() -> DashboardData

}
