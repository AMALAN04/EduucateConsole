//
//  File.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

class SearchCourseId: SearchCourseIdProtocol {
    func prescenceOf(courseId: Int, in courseDetails: [CourseOutLook]) -> Bool {
        for course in courseDetails {
            if courseId == course.courseId {
                return true
            }
        }
        return false
    }
}
