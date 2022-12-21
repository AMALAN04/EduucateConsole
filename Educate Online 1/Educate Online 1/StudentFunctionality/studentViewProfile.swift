//
//  common.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 09/08/22.
//

import Foundation

class StudentViewProfile: ViewProfileProtocol {
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let profileDisplay: ProfileDisplayerProtocol = StudentRelatedObjects.profileDisplay
    
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
