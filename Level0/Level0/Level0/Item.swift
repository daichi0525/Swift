//
//  Item.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
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
