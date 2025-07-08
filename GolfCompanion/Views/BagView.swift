//
//  BagView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 07/07/2025.
//

import SwiftUI

struct BagView: View {
    @State private var bag = Bag(clubs: Bag.examples)
    
    var body: some View {
        NavigationStack {
            List(bag.clubs, id:\.self) { club in
                    NavigationLink(destination: {
                        ClubDetailView(club: club)
                    }, label: {
                        HStack {
                            Text(club.type.rawValue)
                            
                            Spacer()
                            
                            Text(String(club.distance) + " yds")
                                .fontWeight(.bold)
                                .font(.title3)
                        }
                    })
            }
        }
    }
}

#Preview {
    BagView()
}
