//
//  repositoryConnector.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation

class PushData: PushDataProtocol {
    
    func newUser(user: User) throws {
        userData[user.userId] = user
    }
    
    func newCourse(course: Course) throws {
        courseData.append(course)
    }
    
    func newBuyer(studentId: String, course: CourseOutLook) throws {
        optedCoursesData[studentId] = [course]
    }
    
    func addNewCourseToBuyer(studentId: String, course: CourseOutLook) throws {
        optedCoursesData[studentId]?.append(course)
        
    }
    
}

