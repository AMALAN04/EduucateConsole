//
//  updateCourse.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 09/08/22.
//

import Foundation

class UpdateCourse: UpdateCourseProtocol {
    let courseCategory: SetCategoryProtocol = CommonObjects.courseCategory
    let displayCourses: DisplayCoursesProtocol = CommonObjects.displayCourses
    
    func updateCourse(course: Course) {
        var previewFlag: Bool = true
        while previewFlag {
            print("\n" + UpdateCourseOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = UpdateCourseOptions(rawValue: userInput)
            switch userChoice {
            case .name:
                course.name = ReadValue.onlyAlphabets(context: "Enter your course name: ")
            case .category:
                course.category = courseCategory.setCategory()
            case .description:
                course.description = readLine() ?? "-"
            case .price:
                // add validation
                course.price = Int(ReadValue.containsOnlyInt(context: "Enter course price: ")) ?? 0
            case .back:
                print("Back")
                previewFlag = false
            default:
                print("Invalid")
                continue
            }
            displayCourses.courseDetails(course: course)
        }
    }
}
