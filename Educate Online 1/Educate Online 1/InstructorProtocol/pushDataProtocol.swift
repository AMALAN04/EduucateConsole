//
//   pushDataToDatabase.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 07/08/22.
//

import Foundation


protocol PushDataProtocol {
    func newUser(user: User) throws
    func newCourse(course: Course) throws
    func newBuyer(studentId: String, course: CourseOutLook) throws
    func addNewCourseToBuyer(studentId: String, course: CourseOutLook) throws 
}
