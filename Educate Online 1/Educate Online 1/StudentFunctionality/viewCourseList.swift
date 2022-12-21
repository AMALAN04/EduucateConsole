//
//  viewCourseList.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 10/08/22.
//

import Foundation

class ViewCourseList: ViewCourseListProtocol {
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let courseCategory: SetCategoryProtocol = CommonObjects.courseCategory
    let displayCourses: DisplayCoursesProtocol =  CommonObjects.displayCourses
    let filter: CourseFiltersProtocol = StudentRelatedObjects.filter
    let prescenceOfId: SearchCourseIdProtocol = CommonObjects.prescenceOfId
    let selectCourseFunctionality: SelectedCoursesFunctionalityProtocol = StudentRelatedObjects.selectCourseFunctionality
    
    func showCourseList(studentId: String) {
        var viewCourseListflag: Bool = true
        while viewCourseListflag {
            var courseDetails: [CourseOutLook] = []
            print("\n" + ViewCourseListOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = ViewCourseListOptions(rawValue: userInput)
            do {
                switch userChoice {
                case .viewAllCourses:
                    courseDetails = try fetchData.allCourses()
                case .searchByCategory:
                    let category = courseCategory.setCategory()
                    courseDetails = try fetchData.coursesOfCategory(category: category)
                case .searchByInstructorId:
                    print("Enter InstructorId: ",terminator: "")
                    let instructorId = readLine()
                    guard let instructorIdEntered = instructorId else {
                        continue
                    }
                    courseDetails = try fetchData.offeredCoursesBy(instructorId: instructorIdEntered)
                case .searchByCourseId:
                    let courseId = Int(ReadValue.containsOnlyInt(context: "Enter courseId: ")) ?? noValue
                    let course = try fetchData.courseDetails(courseId: courseId)
                    guard let course = course else {
                        continue
                    }
                    //ViewCourseList.displayCourses.courseDetails(course: course)
                    // yet to be updated
                    courseDetails.append(CourseOutLook(courseId: course.id, courseName: course.name, price: course.price))
                    displayCourses.displayCourses(courseDetails: courseDetails)
                    selectCourseFunctionality.showSelectedCoursesFunctionalityProtocol(studentId: studentId, courseDetails: courseDetails)
                    continue
                case .searchByCourseName:
                    let courseName = ReadValue.onlyAlphabets(context: "Enter course name: ")
                    courseDetails = try fetchData.coursesStartsWith(name: courseName)
                case .back:
                    print("Back")
                    viewCourseListflag = false
                default:
                    print("Invalid input")
                }
            } catch {
                print("Something Went Wrong")
                continue
            }
            guard !courseDetails.isEmpty else {
                print("Empty")
                continue
            }
            filter.showFiltes(courseDetails: &courseDetails)
            displayCourses.displayCourses(courseDetails: courseDetails)
            selectCourseFunctionality.showSelectedCoursesFunctionalityProtocol(studentId: studentId, courseDetails: courseDetails)
        }
        
    }
}
