//
//  FruitModel.swift
//  Fructus
//
//  Created by Arman Khan on 23/09/23.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutritions: [String]
    
    // Conform to Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    // Conform to Equatable
    static func ==(lhs: Fruit, rhs: Fruit) -> Bool {
        return lhs.id == rhs.id
    }
}
