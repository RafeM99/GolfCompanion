//
//  Club.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 08/07/2025.
//

import Foundation

enum ClubType: String, CaseIterable {
    case driver = "Driver"
    case threeWood = "3 Wood"
    case fiveWood = "5 Wood"
    case nineIron = "9 Iron"
    case eightIron = "8 Iron"
    case sevenIron = "7 Iron"
    case sixIron = "6 Iron"
    case fiveIron = "5 Iron"
    case pitchingWedge = "Pitching Wedge"
    case sandWedge = "Sand Wedge"
    case putter = "Putter"
}

struct Club: Identifiable, Hashable {
    let id = UUID()
    let type: ClubType
    let brand: String
    let isLeftHanded: Bool
    var distance: Int
}
