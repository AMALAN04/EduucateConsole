//
//  readValue.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class ReadValue{
    static func phoneNo() -> String {
        var validationFlag: Bool =  false
        var phoneNo: String = ""
        while !validationFlag {
            print("Enter your phone no: ",terminator: "")
            let userInput = readLine()
            guard let enteredPhoneNo =  userInput else {
                print ("Nill value")
                continue
            }
            phoneNo = enteredPhoneNo
            validationFlag = Validate.phoneNo(number: phoneNo)
        }
        return phoneNo
    }
    
    static func emailId() -> String {
        var validationFlag: Bool =  false
        var emailId: String = ""
        while !validationFlag {
            print("Enter your Email Id: ",terminator: "")
            let userInput = readLine()
            guard let enteredEmailId =  userInput else {
                print ("Nill value")
                continue
            }
            emailId =  enteredEmailId
            validationFlag = Validate.emailId(id: emailId)
        }
        return emailId
    }
    
    static func password() -> String {
        var validationFlag: Bool =  false
        var password: String = ""
        while !validationFlag {
            print("Set password (Min length = 8(4)): ",terminator: "")
            let userInput = readLine()
            guard let enteredpassword =  userInput else {
                print ("Nill value")
                continue
            }
            password = enteredpassword
            validationFlag = Validate.password(enteredpassword)
        }
        return password
    }
    
    static func dob () -> String {
        var validationFlag: Bool =  false
        var dob: String = ""
        while !validationFlag {
            print ("Enter your DOB (dd-MM-YYYY): ",terminator: "")
            let userInput = readLine()
            guard let  enteredDob =  userInput else {
                print ("Nill value")
                continue
            }
            dob = enteredDob
            validationFlag = Validate.dob(date: enteredDob)
        }
        return dob
    }
    
    static func userId() -> String {
        var validationFlag: Bool = false
        var userId: String = ""
        while !validationFlag{
            print ("Create a unique userId: ",terminator: "")
            let userInput = readLine()
            guard let  enteredUserId =  userInput else {
                print ("Nill value")
                continue
            }
            if enteredUserId.count == 0 {
                continue
            }
            userId = enteredUserId
            validationFlag = Validate.userId(id: userId)
        }
        return userId
    }
    
    static func onlyAlphabets(context: String) -> String {
        var validationFlag: Bool = false
        var returnValue: String = ""
        while !validationFlag {
            print (context, terminator: "")
            let value = readLine()
            guard let enteredValue = value else {
                print("Nill Value")
                continue
            }
            if enteredValue.count == 0 {
                continue
            }
            returnValue = enteredValue
            validationFlag = Validate.containsOnlyAlphabets(in: returnValue)
        }
        return returnValue
    }
    
    static func containsOnlyInt(context: String) -> String {
        var validationFlag: Bool = false
        var returnValue: String = ""
        while !validationFlag {
            print (context, terminator: "")
            let value = readLine()
            guard let enteredValue =  value else {
                print("Invalid")
                continue
            }
            if enteredValue.count == 0 {
                continue
            }
            returnValue = enteredValue
            validationFlag = Validate.containsOnlyInt(in: returnValue)
        }
        return returnValue
    }
    
    static func gender() -> String {
        var genderLoop: Bool = true
        while genderLoop {
            print("\n" + Gender.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let gender = Gender(rawValue: userInput)
            switch gender {
            case .male:
                genderLoop = false
                return "\(Gender.male)"
            case .female:
                genderLoop = false
                return "\(Gender.female)"
            case .others:
                genderLoop = false
                return "\(Gender.others)"
            default:
                print("Invali Input")
                
            }
        }
    }
    
}

