//
//  user.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation

class User {
    var name: String
    private(set) var dob: String
    var gender: String
    private var phoneNo: String
    private(set) var emailId: String
    var skillSet: String
    private(set) var userId: String
    private var password: String
    
    init(name: String, dob: String, gender: String, phoneNo: String, emailId: String, skillSet: String, userId: String, password: String) {
        self.name = name
        self.dob =  dob
        self.gender = gender
        self.phoneNo = phoneNo
        self.emailId = emailId
        self.skillSet = skillSet
        self.userId = userId
        self.password = password
    }
    
    func setName() {
        name = ReadValue.onlyAlphabets(context: "Enter your name: ")
    }
    
    func setDob() {
        dob = ReadValue.dob()
    }
    
    func setPhoneNo() {
        phoneNo = ReadValue.phoneNo()
    }
    
    func setEmailId() {
        emailId = ReadValue.emailId()
    }
    
    func setUserId() {
        userId = ReadValue.userId()
    }
    
    func setPassword() -> Bool {
        let login: VerifyProtocol = Verify()
        let loginStatus = login.user(userId: self.userId)
        if loginStatus {
            self.password = ReadValue.password()
        }
        return loginStatus
    }
    
    func getPhoneNo() -> String {
        return phoneNo
    }
    
    func getPassword() -> String {
        return password
    }
}
