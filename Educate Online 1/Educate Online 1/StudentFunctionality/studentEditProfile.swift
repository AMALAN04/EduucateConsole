//
//  studentEditProfile.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 09/08/22.
//

import Foundation

class StudentEditProfile: EditProfileProtocol {
    let profileDisplay: ProfileDisplayerProtocol = StudentRelatedObjects.profileDisplay
    
    func editProfile(user: User) {
        guard let student = user as? Student else {
            return
        }
        var previewFlag: Bool = true
        
        while previewFlag {
            print("\n" + StudentEditProfileOptions.menu )
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = StudentEditProfileOptions(rawValue: userInput)
            switch userChoice {
            case .name:
                student.setName()
            case .gender:
                student.gender = ReadValue.gender()
            case .dob:
                student.setDob()
            case .phoneNo:
                student.setPhoneNo()
            case .emailId:
                student.setEmailId()
            case .skillSet:
                student.skillSet =  ReadValue.onlyAlphabets(context: "Enter your skill set: ")
            case .password:
                let status = student.setPassword()
                if status {
                    print("Password has been successfully changed")
                } else {
                    print("Invalid")
                }
            case .back:
                previewFlag = false
            default:
                print("Invalid")
                continue
            }
            profileDisplay.profileDisplayer(user: user)
        }
    }
}
