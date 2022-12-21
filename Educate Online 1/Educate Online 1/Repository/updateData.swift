//
//  updateData.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

class UpdateData: UpdateDatabaseProtocol {
    func increaseNoOfCoursesOffered(userId: String) throws {
        if let instructorData = userData[userId] as? Instructor {
            instructorData.increaseNoOfCourse()
        }
    }
    
    func decreaseNoOfCoursesOffered(userId: String) throws {
        if let instructorData = userData[userId] as? Instructor {
            instructorData.decreaseNoOfCourse()
        }
    }
    
    func increaseNoOfCoursesOpted(userId: String) throws {
        if let studentData = userData[userId] as? Student {
            studentData.increaseNoOfCoursesOpted()
        }
    }
}
