//
//  edictInstructorProfile.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

class InstructorEditProfile: EditProfileProtocol {
    let profileDisplay: ProfileDisplayerProtocol = InstructorRelatedObjects.InstructorProfileDisplay
    
    func editProfile(user: User) {
        guard let instructor = user as? Instructor else {
            return
        }
        var previewFlag: Bool = true
        
        while previewFlag {
            print("\n" + InstructorEditProfileOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = InstructorEditProfileOptions(rawValue: userInput)
            switch userChoice {
            case .name:
                instructor.setName()
            case .gender:
                instructor.gender = ReadValue.gender()
            case .dob:
                instructor.setDob()
            case .phoneNo:
                instructor.setPhoneNo()
            case .emailId:
                instructor.setEmailId()
            case .skillSet:
                instructor.skillSet =  ReadValue.onlyAlphabets(context: "Enter your skill set: ")
            case .about:
                print("Update about")
                instructor.about = readLine()
            case .password:
                let status = instructor.setPassword()
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
