//
//  showOfferedCoursesFunctionalities.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

class OfferedCoursesFunctionalities: OfferedCoursesFunctionalitiesProtocol {
    let prescenceOfId:SearchCourseIdProtocol = CommonObjects.prescenceOfId
    let displayCourses: DisplayCoursesProtocol = CommonObjects.displayCourses
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let modifyCourseFunctionalities: ModifyOfferedCourseFunctionalitiesProtocol = InstructorRelatedObjects.modifyCourseFunctionalities
    
    func showOfferedCoursesFunctionalities(offeredCourseDetails: inout[CourseOutLook]) {
        var previewFlag: Bool = true
        while previewFlag {
            print("\n" + ViewFullcourseOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = ViewFullcourseOptions(rawValue: userInput)
            switch userChoice {
            case .viewFullCourse:
                print("View complete course detail")
                let courseId: Int = Int(ReadValue.containsOnlyInt(context: "Enter courseId: "))!
                let status: Bool = prescenceOfId.prescenceOf(courseId: courseId, in: offeredCourseDetails)
                guard status else {
                    print("Invalid")
                    continue
                }
                do {
                    let course = try fetchData.courseDetails(courseId: courseId)
                    if let courseDetail = course {
                        displayCourses.courseDetails(course: courseDetail)
                        modifyCourseFunctionalities.showIndividualCourseFunctionalities(course: courseDetail, offeredCourseDetails: &offeredCourseDetails)
                        return
                    }
                    
                } catch {
                    print("Something went wrong")
                }
            case .back:
                print("Back")
                previewFlag = false
            default :
                print ("Invalidvalid")
            }
        }
    }
}


