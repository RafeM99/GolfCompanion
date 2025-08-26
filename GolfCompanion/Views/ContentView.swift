//
//  ContentView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 07/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BagView()
                .tabItem{
                    Label("Bag", image: "golf.bag")
                }
            CoursesView()
                .tabItem{
                    Label("Courses", image: "golf.flag.fill")
                }
            PlayView()
                .tabItem{
                    Label("Play", systemImage: "figure.golf")
                }
        }
    }
}

#Preview {
    ContentView()
}
