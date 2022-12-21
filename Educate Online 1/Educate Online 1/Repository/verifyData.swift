//
//  loginVerifier.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class Verify: VerifyProtocol {
    func login(id: String, password: String) -> (status: Bool, userName: String?, functionality: ShowFunctionality?) {
        if(userData[id]?.getPassword() == password) {
            if userData[id] is Instructor {
                return (status: true, userName:userData[id]!.name , functionality: InstructorFunctionality())
            } else {
                return (status: true, userName:userData[id]!.name , functionality:  StudentFunctionality())
            }
        }
        return (status: false, userName: nil , functionality: nil)
    }
    
    func user(userId: String) -> Bool {
        print("Enter your password: ", terminator: "")
        let password = readLine()
        guard let password = password else {
            return false
        }
        let loginStatus = login(id: userId, password: password)
        return loginStatus.status
    }
    
    func newBuyer(studentId: String) -> Bool {
        if optedCoursesData.isEmpty {
            return true
        }
        guard let _ = optedCoursesData[studentId] else {
            return true
        }
        return false
    }
    
    func courseAlreadyBought(courseId: Int, studentId: String) -> Bool {
        guard let courses = optedCoursesData[studentId] else {
            return false
        }
        for course in courses {
            if course.courseId == courseId {
                return true
            }
        }
        return false
    }
}
