//
//  Integer Range.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 03/08/22.
//

import Foundation

class Validate{
    static func phoneNo(number: String) -> Bool {
        guard(Int(number) != nil) else {
            print ("Invalid number")
            return false
        }
        if number.count == 10 {
            return true
        }
        print ("Invalid number")
        return false
    }
    
    static func emailId(id: String) ->  Bool {
        if id.contains("@") {
            return true
        }
        print ("Invalid Email Id")
        return  false
    }
    
    static func password(_ password: String) ->  Bool {
        if password.count >= 4 {
            print("Confirm your password           : ",terminator: "")
            let confirmPassword = readLine()
            guard let reEnteredPassword = confirmPassword else {
                return false
            }
            if reEnteredPassword ==  password {
                return true
            } else{
                print("Password Mismatch")
                return false
            }
        }
        print ("Set a strong password")
        return  false
    }
    
    static func dob(date: String) -> Bool{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "dd-MM-YYYY"
        guard let _ = dateFormatterGet.date(from: date) else {
            print("Invalid date format")
            return false
        }
        return true
    }
    
    static func userId(id: String) -> Bool {
        if let _ = userData[id] {
            print("The user name is already taken")
            return false
        }
        return true
    }
    
    static func containsOnlyAlphabets(in inputString: String) -> Bool {  // check for presence of numerals in the string
        guard inputString.components(separatedBy: CharacterSet.decimalDigits.inverted).joined().isEmpty else {
            print("Invalid")
            return false
        }
        return true
    }
    
    static func containsOnlyInt(in inputValue: String) -> Bool {
        if let value = Int( inputValue){
            if value < 0 {
                print("Invalid")
                return false
            } else {
                return true
            }
        }
        print("Invalid")
        return false
    }
}
