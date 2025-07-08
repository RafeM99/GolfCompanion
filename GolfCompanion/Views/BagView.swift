//
//  BagView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 07/07/2025.
//

import SwiftUI

struct BagView: View {
    @State var bag = Bag(clubs: Bag.examples)
    @State private var isShowingSheet: Bool = false
    
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
            .navigationTitle("Bag")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isShowingSheet = true
                    }, label: {
                        Image(systemName: "plus")
                            .padding(10)
                    })
                }
            }
            .sheet(isPresented: $isShowingSheet, onDismiss: {
                isShowingSheet = false
            }, content: {
                AddClubView(clubs: $bag.clubs, isShowing: $isShowingSheet)
            })
        }
    }
}

#Preview {
    BagView()
}
