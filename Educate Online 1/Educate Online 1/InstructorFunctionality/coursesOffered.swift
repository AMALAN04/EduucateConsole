//
//  offeredCourses.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

class CoursesOffered: CoursesOfferedProtocol {
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let displayCourses: DisplayCoursesProtocol = CommonObjects.displayCourses
    
    func coursesOffered(by instructorId: String) -> ([CourseOutLook]) {
        var offeredCourses: [CourseOutLook] = []
        do {
            offeredCourses = try fetchData.offeredCoursesBy(instructorId: instructorId)
            guard !offeredCourses.isEmpty else{
                print("Empty")
                return []
            }
            displayCourses.displayCourses(courseDetails: offeredCourses)
        } catch {
            print("Something went wrong")
        }
        return offeredCourses
    }
}
