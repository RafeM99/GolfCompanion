//
//  AddClubView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 08/07/2025.
//

import SwiftUI

struct AddClubView: View {
    @Binding var clubs: [Club]
    @Binding var isShowing: Bool
    
    @State var newType: ClubType = .driver
    @State var newBrand: String = ""
    @State var newIsLeft: Bool = false
    @State var newDistance: Double = 150
    
    var body: some View {
        List {
            TextField("Brand", text: $newBrand)
            
            Picker("Club type", selection: $newType) {
                ForEach(ClubType.allCases, id:\.self) { type in
                    Text("\(type.rawValue)")
                }
            }
            
            Toggle(isOn: $newIsLeft, label: {
                Text("Left Handed")
            })
            
            VStack(alignment: .leading) {
                Text("Distance: \(newDistance, specifier: "%.0f") yds")
                
                Slider(value: $newDistance, in: 50...350, step: 5, label: {
                    Text("Distance")
                }, minimumValueLabel: {
                    Text("50 yds")
                }, maximumValueLabel: {
                    Text("350 yds")
                })
            }
            
            Button(action: {
                let newClub = Club(type: newType, brand: newBrand, isLeftHanded: newIsLeft, distance: Int(newDistance))
                clubs.append(newClub)
                isShowing = false
            }, label: {
                Text("Add Club")
            })
        }
    }
}

//#Preview {
//    AddClubView()
//}
