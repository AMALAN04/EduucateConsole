//
//  File.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 11/08/22.
//

import Foundation

class ViewFullCourse: ViewFullCourceProtocol {
    let displayCourses: DisplayCoursesProtocol = CommonObjects.displayCourses
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let prescenceOfId:SearchCourseIdProtocol = CommonObjects.prescenceOfId
    
    func showFullCourceFunctionality(courseDetails: [CourseOutLook]) {
        var viewFlag = true
        while viewFlag {
            print("\n" + ViewFullcourseOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = ViewFullcourseOptions(rawValue: userInput)
            switch userChoice {
            case .viewFullCourse:
                let courseId: Int = Int(ReadValue.containsOnlyInt(context: "Enter courseId: "))!
                let status: Bool = prescenceOfId.prescenceOf(courseId: courseId, in: courseDetails)
                guard status else {
                    print("Invalid")
                    continue
                }
                do {
                    let course = try fetchData.courseDetails(courseId: courseId)
                    guard let course = course else {
                        continue
                    }
                    displayCourses.courseDetails(course: course)
                } catch {
                    print("Something went wrong")
                    continue
                }
                displayCourses.displayCourses(courseDetails: courseDetails)
            case .back:
                print ("Back")
                viewFlag = false
            default:
                print("Invalid")
                continue
            }
        }
    }
}
