//
//  InstructorRelatedObjects.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 12/08/22.
//

import Foundation

class InstructorRelatedObjects {
    static let createCourse: CreateCourseProtocol = CreateCourse()
    static let instructorViewProfile : ViewProfileProtocol  = InstructorViewProfile()
    static let courseOffered: CoursesOfferedProtocol = CoursesOffered()
    static let showOfferedCourseFunctionality: OfferedCoursesFunctionalitiesProtocol = OfferedCoursesFunctionalities()
    static let InstructorupdateProfile: EditProfileProtocol = InstructorEditProfile()
    static let InstructorProfileDisplay: ProfileDisplayerProtocol = InstructorProfileDisplayer()
    static var profileDisplay: ProfileDisplayerProtocol = InstructorProfileDisplayer()
    static let courseUpdate: UpdateCourseProtocol = UpdateCourse()
    static let modifyCourseFunctionalities: ModifyOfferedCourseFunctionalitiesProtocol = ModifyOfferedCourseFunctionalities()
}
