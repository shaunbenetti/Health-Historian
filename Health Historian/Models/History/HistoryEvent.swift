//
//  HistoryEvent.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/8/26.
//

import Foundation

protocol HistoryEvent: Identifiable {

    var id: UUID { get }

    var timestamp: Date { get }

}
