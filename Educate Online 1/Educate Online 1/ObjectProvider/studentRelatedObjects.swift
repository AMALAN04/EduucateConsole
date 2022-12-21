//
//  studentRelatedObjects.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 12/08/22.
//

import Foundation

class StudentRelatedObjects {
    static let viewProfile : ViewProfileProtocol  = StudentViewProfile()
    static let viewCourses: ViewCourseListProtocol = ViewCourseList()
    static let viewCourceFunctionality: ViewFullCourceProtocol = ViewFullCourse()
    static let purchaseFunctionality:PurchaseFunctionalityProtocol = PurchaseCourseFunctiionality()
    static let purchase: PurchaseCourseProtocol = PurchaseCourse()
    static var profileDisplay: ProfileDisplayerProtocol = StudentProfileDisplayer()
    static let filter: CourseFiltersProtocol = CourseFilters()
    static let selectCourseFunctionality: SelectedCoursesFunctionalityProtocol = SelectedCourseFunctionality()
}
