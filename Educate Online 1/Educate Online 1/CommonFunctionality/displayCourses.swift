//
//  displayCourseList.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

class DisplayCourses: DisplayCoursesProtocol {
    func displayCourses(courseDetails: [CourseOutLook]) {
        if courseDetails.isEmpty{
            print("Empty")
            return
        }
        print("")
        for course in courseDetails {
            print("Course Id: \(course.courseId)     Course Name: \(course.courseName)                 Price: \(course.price)\n")
        }
    }
    
    func courseDetails(course: Course) {
        print("")
        print("Course Id         : \(course.id)")
        print("Course Name       : \(course.name)")
        print("Instructor Id     : \(course.instructorId)")
        print("Course Category   : \(course.category)")
        print("Course Description: \(course.description)")
        print("Price             : \(course.price)\n")
    }
}
