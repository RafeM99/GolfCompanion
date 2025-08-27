//
//  Course.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 26/08/2025.
//

import Foundation

struct Course: Identifiable {
    let id = UUID()
    let clubName: String
    let courseName: String
    let location: Location
    let tees: TeeTypes
    
    static var courseExamples: [Course] {
        return [
            Course(
                clubName: "Augusta National Golf Club",
                courseName: "Augusta National",
                location: Location(
                    address: "2604 Washington Rd",
                    city: "Augusta",
                    state: "GA",
                    country: "USA",
                    latitude: 33.5028,
                    longitude: -82.0223
                ),
                tees: TeeTypes(
                    female: [
                        Tee(
                            teeName: "Forward Tees",
                            totalYards: 6365,
                            parTotal: 72,
                            holes: [
                                Hole(par: 4, yardage: 365), Hole(par: 5, yardage: 515), Hole(par: 4, yardage: 340), Hole(par: 3, yardage: 170),
                                Hole(par: 4, yardage: 400), Hole(par: 3, yardage: 165), Hole(par: 4, yardage: 330), Hole(par: 5, yardage: 480),
                                Hole(par: 4, yardage: 395), Hole(par: 4, yardage: 480), Hole(par: 4, yardage: 400), Hole(par: 3, yardage: 145),
                                Hole(par: 5, yardage: 455), Hole(par: 4, yardage: 380), Hole(par: 5, yardage: 475), Hole(par: 3, yardage: 145),
                                Hole(par: 4, yardage: 370), Hole(par: 4, yardage: 385)
                            ]
                        )
                    ],
                    male: [
                        Tee(
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
                        ),
                        Tee(
                            teeName: "Member Tees",
                            totalYards: 6980,
                            parTotal: 72,
                            holes: [
                                Hole(par: 4, yardage: 400), Hole(par: 5, yardage: 520), Hole(par: 4, yardage: 320), Hole(par: 3, yardage: 200),
                                Hole(par: 4, yardage: 410), Hole(par: 3, yardage: 165), Hole(par: 4, yardage: 420), Hole(par: 5, yardage: 500),
                                Hole(par: 4, yardage: 425), Hole(par: 4, yardage: 450), Hole(par: 4, yardage: 455), Hole(par: 3, yardage: 140),
                                Hole(par: 5, yardage: 460), Hole(par: 4, yardage: 400), Hole(par: 5, yardage: 490), Hole(par: 3, yardage: 160),
                                Hole(par: 4, yardage: 400), Hole(par: 4, yardage: 425)
                            ]
                        )
                    ]
                )
            ),
            Course(
                clubName: "City Park Golf Club",
                courseName: "Lakeside Course",
                location: Location(
                    address: "123 Park Blvd",
                    city: "Springfield",
                    state: "IL",
                    country: "USA",
                    latitude: 39.7997,
                    longitude: -89.6558
                ),
                tees: TeeTypes(
                    female: [
                        Tee(
                            teeName: "Red Tees",
                            totalYards: 2500,
                            parTotal: 36,
                            holes: [
                                Hole(par: 4, yardage: 342), Hole(par: 3, yardage: 144), Hole(par: 4, yardage: 369), Hole(par: 5, yardage: 459),
                                Hole(par: 3, yardage: 139), Hole(par: 4, yardage: 351), Hole(par: 4, yardage: 365), Hole(par: 3, yardage: 157),
                                Hole(par: 4, yardage: 378)
                            ]
                        )
                    ],
                    male: [
                        Tee(
                            teeName: "White Tees",
                            totalYards: 3010,
                            parTotal: 35,
                            holes: [
                                Hole(par: 4, yardage: 380), Hole(par: 3, yardage: 160), Hole(par: 4, yardage: 410), Hole(par: 5, yardage: 510),
                                Hole(par: 3, yardage: 155), Hole(par: 4, yardage: 390), Hole(par: 4, yardage: 405), Hole(par: 3, yardage: 175),
                                Hole(par: 4, yardage: 420)
                            ]
                        ),
                        Tee(
                            teeName: "Blue Tees",
                            totalYards: 3250,
                            parTotal: 35,
                            holes: [
                                Hole(par: 4, yardage: 410), Hole(par: 3, yardage: 180), Hole(par: 4, yardage: 440), Hole(par: 5, yardage: 540),
                                Hole(par: 3, yardage: 165), Hole(par: 4, yardage: 420), Hole(par: 4, yardage: 435), Hole(par: 3, yardage: 190),
                                Hole(par: 4, yardage: 470)
                            ]
                        )
                    ]
                )
            ),
            Course(
                clubName: "Pebble Beach Golf Links",
                courseName: "Pebble Beach",
                location: Location(
                    address: "17-Mile Drive",
                    city: "Pebble Beach",
                    state: "CA",
                    country: "USA",
                    latitude: 36.5684,
                    longitude: -121.9507
                ),
                tees: TeeTypes(
                    female: [
                        Tee(
                            teeName: "Forward Tees",
                            totalYards: 5972,
                            parTotal: 72,
                            holes: [
                                Hole(par: 4, yardage: 320), Hole(par: 5, yardage: 446), Hole(par: 4, yardage: 330), Hole(par: 4, yardage: 269),
                                Hole(par: 3, yardage: 110), Hole(par: 5, yardage: 457), Hole(par: 3, yardage: 99), Hole(par: 4, yardage: 380),
                                Hole(par: 4, yardage: 368), Hole(par: 4, yardage: 389), Hole(par: 4, yardage: 345), Hole(par: 3, yardage: 160),
                                Hole(par: 4, yardage: 340), Hole(par: 5, yardage: 457), Hole(par: 4, yardage: 324), Hole(par: 4, yardage: 345),
                                Hole(par: 3, yardage: 151), Hole(par: 5, yardage: 482)
                            ]
                        ),
                        Tee(
                            teeName: "White Tees",
                            totalYards: 6350,
                            parTotal: 72,
                            holes: [
                                Hole(par: 4, yardage: 350), Hole(par: 5, yardage: 480), Hole(par: 4, yardage: 355), Hole(par: 4, yardage: 280),
                                Hole(par: 3, yardage: 120), Hole(par: 5, yardage: 480), Hole(par: 3, yardage: 110), Hole(par: 4, yardage: 400),
                                Hole(par: 4, yardage: 400), Hole(par: 4, yardage: 410), Hole(par: 4, yardage: 360), Hole(par: 3, yardage: 175),
                                Hole(par: 4, yardage: 360), Hole(par: 5, yardage: 480), Hole(par: 4, yardage: 350), Hole(par: 4, yardage: 370),
                                Hole(par: 3, yardage: 160), Hole(par: 5, yardage: 510)
                            ]
                        )
                    ],
                    male: [
                        Tee(
                            teeName: "Black Tees",
                            totalYards: 6828,
                            parTotal: 72,
                            holes: [
                                Hole(par: 4, yardage: 377), Hole(par: 5, yardage: 516), Hole(par: 4, yardage: 390), Hole(par: 4, yardage: 331),
                                Hole(par: 3, yardage: 195), Hole(par: 5, yardage: 504), Hole(par: 3, yardage: 106), Hole(par: 4, yardage: 427),
                                Hole(par: 4, yardage: 481), Hole(par: 4, yardage: 446), Hole(par: 4, yardage: 374), Hole(par: 3, yardage: 201),
                                Hole(par: 4, yardage: 393), Hole(par: 5, yardage: 572), Hole(par: 4, yardage: 396), Hole(par: 4, yardage: 403),
                                Hole(par: 3, yardage: 177), Hole(par: 5, yardage: 543)
                            ]
                        )
                    ]
                )
            )
        ]
    }
}
