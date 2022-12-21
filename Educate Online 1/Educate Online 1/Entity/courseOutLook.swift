//
//  courseOutLock.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 10/08/22.
//

import Foundation

struct CourseOutLook {
    var courseId: Int
    var courseName: String
    var price: Int
    init(courseId: Int, courseName: String, price: Int) {
        self.courseId = courseId
        self.courseName = courseName
        self.price = price
    }
}
