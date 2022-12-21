//
//  prescenceOfIdUtil.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

protocol SearchCourseIdProtocol {
    func prescenceOf(courseId: Int, in courseDetails: [CourseOutLook]) -> Bool
}
