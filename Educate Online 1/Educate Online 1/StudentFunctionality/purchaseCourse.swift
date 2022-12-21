//
//  purchaseCourse.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 11/08/22.
//

import Foundation

class PurchaseCourse: PurchaseCourseProtocol {
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let verify: VerifyProtocol = DatabaseRelatedObjects.verify
    let pushData: PushDataProtocol = DatabaseRelatedObjects.pushData
    let updateData: UpdateDatabaseProtocol = DatabaseRelatedObjects.updateData
    
    func purchaseCourse(studentId: String, course: Course) {
        let newBuyer = verify.newBuyer(studentId: studentId)
        do {
            let courseOutLook: CourseOutLook = CourseOutLook(courseId: course.id, courseName: course.name, price: course.price)
            if newBuyer {
                try pushData.newBuyer(studentId: studentId, course: courseOutLook )
            } else {
                try pushData.addNewCourseToBuyer(studentId: studentId, course: courseOutLook)
            }
            try updateData.increaseNoOfCoursesOpted(userId: studentId)
            print("Successfully Purchased")
            
        } catch {
            print("Something went wrong")
        }
        
    }
}
