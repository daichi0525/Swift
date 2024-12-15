//
//  Item.swift
//  Level1
//
//  Created by nakajimadaichi on 2024/12/15.
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
