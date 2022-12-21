//
//  instructorCourseFunctionalityList.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

class ProfileFunctionalities: ProfileFunctionalitiesProtocol {
    static var updateProfile: EditProfileProtocol?
    
    func showProfileFunctionalities(user: User) {
        var previewFlag: Bool = true
        while previewFlag {
            print("\n" + EditProfileOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let EditProfileOptions =  EditProfileOptions(rawValue: userInput)
            switch EditProfileOptions {
            case .editProfile:
                print("Edit Profile")
                if let _ = user as? Student {
                    ProfileFunctionalities.updateProfile = StudentEditProfile()
                } else {
                    ProfileFunctionalities.updateProfile = InstructorEditProfile()
                }
                ProfileFunctionalities.updateProfile?.editProfile(user: user)
            case .back:
                print("Back")
                previewFlag = false
            default:
                print("Invalid")
            }
        }
    }
}
