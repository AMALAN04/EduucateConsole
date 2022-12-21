//
//  feetchDataFromDatabase.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 07/08/22.
//

import Foundation

protocol FetchDataPotocol {
    func lastInsertedCourseId() -> Int
    func userProfile(userId: String) throws-> User
    func offeredCoursesBy(instructorId: String)throws -> [CourseOutLook]
    func courseDetails(courseId: Int) throws -> Course?
    func allCourses() throws -> [CourseOutLook]
    func coursesOfCategory(category: Category) throws -> [CourseOutLook]
    func coursesStartsWith(name: String) throws -> [CourseOutLook]
    func optedCouses(studentId: String)throws -> [CourseOutLook]
}

