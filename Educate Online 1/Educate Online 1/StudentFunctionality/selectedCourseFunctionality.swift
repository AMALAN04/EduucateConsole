//
//  selectedCourseFunctionality.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 11/08/22.
//

import Foundation

class SelectedCourseFunctionality: SelectedCoursesFunctionalityProtocol {
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let displayCourses: DisplayCoursesProtocol = CommonObjects.displayCourses
    let prescenceOfId: SearchCourseIdProtocol = CommonObjects.prescenceOfId
    let purchaseFunctionality:PurchaseFunctionalityProtocol = StudentRelatedObjects.purchaseFunctionality
    let verify: VerifyProtocol = DatabaseRelatedObjects.verify
    
    func showSelectedCoursesFunctionalityProtocol(studentId: String, courseDetails: [CourseOutLook]) {
        var selectedCourseFlag: Bool = true
        while selectedCourseFlag {
            print("\n" + ViewFullcourseOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = ViewFullcourseOptions(rawValue: userInput)
            switch userChoice {
            case .viewFullCourse:
                let courseId: Int = Int(ReadValue.containsOnlyInt(context: "View entire course details\nEnter courseId: ")) ?? noValue
                let status: Bool = prescenceOfId.prescenceOf(courseId: courseId, in: courseDetails)
                guard status else {
                    print("Invalid")
                    continue
                }
                do {
                    let course = try fetchData.courseDetails(courseId: courseId)
                    if let courseDetail = course {
                        displayCourses.courseDetails(course: courseDetail)
                        let alreadyPurchased = verify.courseAlreadyBought(courseId: courseId, studentId: studentId)
                        
                        if !alreadyPurchased {
                            purchaseFunctionality.showPurchaseFunctionality(studentId: studentId, course: courseDetail)
                        } else {
                            print("Already purchased")
                        }
                        displayCourses.displayCourses(courseDetails: courseDetails)
                        continue
                    }
                    
                } catch {
                    print("Something went wrong")
                }
            case .back:
                print("Back")
                selectedCourseFlag = false
            default:
                print("Invalid")
            }
        }
    }
}
