//
//  modifyOfferedCourseFunctionalities.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 09/08/22.
//

import Foundation

class ModifyOfferedCourseFunctionalities: ModifyOfferedCourseFunctionalitiesProtocol {
    let courseUpdate: UpdateCourseProtocol =  InstructorRelatedObjects.courseUpdate
    let removeDara: RemoveDataProtocol =  DatabaseRelatedObjects.removeDara
    let updateData: UpdateDatabaseProtocol = DatabaseRelatedObjects.updateData
    
    func showIndividualCourseFunctionalities(course: Course, offeredCourseDetails: inout[CourseOutLook]) {
        var previewFlag = true
        while previewFlag {
            print("\n" + ModifyOfferedCoursesOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = ModifyOfferedCoursesOptions(rawValue: userInput)
            switch userChoice {
            case .updateCourse:
                print("Update Course")
                courseUpdate.updateCourse(course: course)
                return
            case .deleteCourse:
                print("Delete Course - Still have to be update")
                do {
                    let status = try removeDara.removeCourse(courseId: course.id)
                    if status {
                        print("Successfully removed from database")
                        try updateData.decreaseNoOfCoursesOffered(userId: course.instructorId)
                        for index in offeredCourseDetails.indices{
                            if course.id == offeredCourseDetails[index].courseId{
                                offeredCourseDetails.remove(at: index)
                                previewFlag = false
                                break
                            }
                        }
                    } else {
                        print("Something went wrong")
                    }
                } catch {
                    print("Something went wrong")
                }
                return
            case .back:
                print("Back")
                previewFlag = false
            default:
                print("Invalid Input")
                continue
            }
        }
    }
}
