//
//  instructorFunctionality.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class InstructorFunctionality: ShowFunctionality {
    let createCourse: CreateCourseProtocol = InstructorRelatedObjects.createCourse
    let viewProfile : ViewProfileProtocol  = InstructorRelatedObjects.instructorViewProfile
    let editProfile: ProfileFunctionalitiesProtocol = CommonObjects.editProfile
    let courseOffered: CoursesOfferedProtocol = InstructorRelatedObjects.courseOffered
    let showOfferedCourseFunctionality: OfferedCoursesFunctionalitiesProtocol = InstructorRelatedObjects.showOfferedCourseFunctionality
    
    func functionalityPreview(userId: String) {
        var previewFlag: Bool = true
        while previewFlag {
            print("\n" + InstructorFunctionalityOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let onboard = InstructorFunctionalityOptions(rawValue: userInput)
            switch onboard {
            case .viewProfile:
                print("View Profile")
                let user = viewProfile.viewMyProfile(userId:userId )
                guard let instructor = user else {
                    continue
                }
                editProfile.showProfileFunctionalities(user: instructor)
            case .createCourse:
                print("Create Course")
                if createCourse.setCourseDetails(instructorId: userId) {
                    print("Course is successfully added to the DataBase")
                }
            case .viewOfferedCourses:
                print("View Offered Courses")
                //let offeredCourses = InstructorFunctionality.courseOffered.coursesOffered(by: userId)
                var offeredCourses = courseOffered.coursesOffered(by: userId)
                guard !offeredCourses.isEmpty else {
                    continue
                }
                showOfferedCourseFunctionality.showOfferedCoursesFunctionalities(offeredCourseDetails: &offeredCourses)
            case .signOut:
                previewFlag = false
                print("Sign Out")
            default:
                print("Invalid Choice")
            }
        }
    }
}
