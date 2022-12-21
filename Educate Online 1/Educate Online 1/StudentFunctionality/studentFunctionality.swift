//
//  studentFunctionality.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class StudentFunctionality: ShowFunctionality {
    let viewProfile : ViewProfileProtocol  = StudentRelatedObjects.viewProfile
    let editProfile: ProfileFunctionalitiesProtocol = CommonObjects.editProfile
    let viewCourses: ViewCourseListProtocol = StudentRelatedObjects.viewCourses
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let prescenceOfId:SearchCourseIdProtocol = CommonObjects.prescenceOfId
    let displayCourses: DisplayCoursesProtocol = CommonObjects.displayCourses
    let viewCourceFunctionality: ViewFullCourceProtocol = StudentRelatedObjects.viewCourceFunctionality
    
    func functionalityPreview(userId: String) {
        var previewFlag: Bool = true
        while previewFlag {
            print("\n" + StudentFunctionalityOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = StudentFunctionalityOptions(rawValue: userInput)
            switch userChoice{
            case .viewProfile:
                print("View Profile")
                let user = viewProfile.viewMyProfile(userId:userId )
                guard let student = user else {
                    continue
                }
                editProfile.showProfileFunctionalities(user: student)
                
            case .viewCourseList:
                print("View course list")
                viewCourses.showCourseList(studentId: userId)
                
            case .viewOptedCourses:
                var courseDetails: [CourseOutLook] = []
                print("View opted courses")
                do {
                    courseDetails = try fetchData.optedCouses(studentId: userId)
                    guard !courseDetails.isEmpty else {
                        print("Empty")
                        continue
                    }
                    displayCourses.displayCourses(courseDetails: courseDetails)
                    viewCourceFunctionality.showFullCourceFunctionality(courseDetails: courseDetails)
                }
                catch {
                    print("Something went wrong")
                }
            case .signOut:
                print("Sign out")
                previewFlag = false
                
            default:
                print("Invalid input")
            }
        }
    }
}
