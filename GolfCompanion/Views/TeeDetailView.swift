//
//  TeeDetailView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 27/08/2025.
//

import SwiftUI

struct TeeDetailView: View {
    let tee: Tee
    
    var body: some View {
        List {
            ForEach(Array(tee.holes.enumerated()), id: \.offset) { index, hole in
                VStack(alignment: .leading) {
                    Text("Hole \(index + 1)")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Par \(hole.par)")
                    Text("\(hole.yardage) yds")
                }
            }
            .navigationTitle("\(tee.teeName)")
        }
    }
}

#Preview {
    TeeDetailView(tee: Tee(
        teeName: "Masters Tees",
        totalYards: 7445,
        parTotal: 72,
        holes: [
            Hole(par: 4, yardage: 445), Hole(par: 5, yardage: 575), Hole(par: 4, yardage: 350), Hole(par: 3, yardage: 240),
            Hole(par: 4, yardage: 455), Hole(par: 3, yardage: 180), Hole(par: 4, yardage: 450), Hole(par: 5, yardage: 570),
            Hole(par: 4, yardage: 460), Hole(par: 4, yardage: 495), Hole(par: 4, yardage: 505), Hole(par: 3, yardage: 155),
            Hole(par: 5, yardage: 510), Hole(par: 4, yardage: 440), Hole(par: 5, yardage: 530), Hole(par: 3, yardage: 170),
            Hole(par: 4, yardage: 440), Hole(par: 4, yardage: 465)
        ]
    ))
}
