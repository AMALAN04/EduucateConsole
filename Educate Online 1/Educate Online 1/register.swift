//
//  register.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation

class Registration: UserRegistrationProtocol {
    let pushData: PushDataProtocol = DatabaseRelatedObjects.pushData
    
    func register(as desigination: Designation) -> Bool {
        let name: String = ReadValue.onlyAlphabets(context: "Enter your name: ")
        let dob: String = ReadValue.dob()
        let gender: String = ReadValue.gender()
        let phoneNo: String = ReadValue.phoneNo()
        let emailId: String = ReadValue.emailId()
        let skillSet: String = ReadValue.onlyAlphabets(context: "Enter your skill set: ")
        let userId: String = ReadValue.userId()
        let password: String = ReadValue.password()
        if( desigination == .student) {
            let student =  Student(name: name, dob: dob, gender: gender, phoneNo: phoneNo, emailId: emailId, skillSet: skillSet, userId:  userId, password:  password)
            do {
                try pushData.newUser(user: student)
                return true
            } catch {
                return false
            }
        } else {
            let instructor = Instructor(name: name, dob: dob, gender: gender, phoneNo:  phoneNo, emailId:  emailId, skillSet: skillSet, userId: userId, password: password)
            do {
                try pushData.newUser(user: instructor)
                return true
            } catch {
                return false
            }
        }
    }
}
