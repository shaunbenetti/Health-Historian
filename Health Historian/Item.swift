//
//  Item.swift
//  Health Historian
//
//  Created by Shaun Benetti on 8/7/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
