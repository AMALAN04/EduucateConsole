//
//  displayOfferedCourses.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

protocol CoursesOfferedProtocol {
    func coursesOffered(by instructorId: String) -> ([CourseOutLook])
}
