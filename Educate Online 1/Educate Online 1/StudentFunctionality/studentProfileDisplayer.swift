//
//  studentProfileDisplayer.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 09/08/22.
//

import Foundation

class StudentProfileDisplayer: ProfileDisplayerProtocol {
    func profileDisplayer(user: User) {
        let  obtainedProfile = user as? Student
        guard let studentProfile = obtainedProfile else {
            print("Something went wrong......")
            return
        }
        print("\n")
        print("Name                 : ", studentProfile.name)
        print("Gender               : ", studentProfile.gender)
        print("DOB                  : ", studentProfile.dob)
        print("No Of Courses Opted  : ", studentProfile.noOfCourseOpted)
        print("Phone No             : ", studentProfile.getPhoneNo())
        print("Email Id             : ", studentProfile.emailId)
        print("Skill Set            : ", studentProfile.skillSet)
        print("User Id              : ", studentProfile.userId)
    }
}
