//
//  ClubDetailView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 08/07/2025.
//

import SwiftUI

struct ClubDetailView: View {
    let club: Club
    
    var body: some View {
        Form {
            Text("Brand: " + club.brand)
            Text("Distance: " + String(club.distance) + " yds")
            
        }
        .navigationTitle(club.type.rawValue)
        
    }
}

#Preview {
    ClubDetailView(club: Club(type: .driver, brand: "Titleist", isLeftHanded: false, distance: 250))
}
