//
//   viewProfileFunctionality.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class InstructorViewProfile: ViewProfileProtocol {
    let profileDisplay: ProfileDisplayerProtocol = InstructorRelatedObjects.InstructorProfileDisplay
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    
    func viewMyProfile(userId: String) -> User? {
        var userProfile: User?
        do {
            userProfile = try fetchData.userProfile(userId: userId)
        } catch {
            print("Connectivity Error")
        }
        profileDisplay.profileDisplayer(user: userProfile!)
        return userProfile
    }
}
