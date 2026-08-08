//
//  DashboardViewModel.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

///
/// Supplies dashboard data to the UI.
///
final class DashboardViewModel {

    private let service: DashboardService

    let dashboard: DashboardData

    init(service: DashboardService = MockDashboardService()) {

        self.service = service
        self.dashboard = service.loadDashboard()

    }

}
