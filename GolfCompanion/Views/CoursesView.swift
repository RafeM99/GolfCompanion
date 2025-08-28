//
//  CoursesView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 25/08/2025.
//

import SwiftUI

struct CoursesView: View {
    @State var courses = Course.courseExamples
    
    var body: some View {
        NavigationStack {
            List($courses) { $course in
                NavigationLink(destination: {
                    CourseDetailView(course: course)
                }, label: {
                    HStack {
                        Image(systemName: course.isFavourite ? "star.fill" : "star")
                            .onTapGesture {
                                course.isFavourite.toggle()
                            }
                            .foregroundColor(.blue)
                            .symbolEffect(.bounce, value: course.isFavourite)
                        
                        Text("\(course.courseName)")
                    }
                })
            }
            .navigationTitle("Courses")
        }
    }
}

#Preview {
    CoursesView()
}
