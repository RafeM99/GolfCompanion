//
//  CoursesView.swift
//  GolfCompanion
//
//  Created by Rafe Marriott on 25/08/2025.
//

import SwiftUI

struct CoursesView: View {
    let courses = Course.courseExamples
    
    var body: some View {
        NavigationStack {
            List(courses) { course in
                NavigationLink(destination: {
                    CourseDetailView(course: course)
                }, label: {
                    Text("\(course.courseName)")
                })
            }
            .navigationTitle("Courses")
        }
    }
}

#Preview {
    CoursesView()
}
