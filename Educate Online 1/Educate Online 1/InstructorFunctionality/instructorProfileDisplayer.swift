//
//  instructorProfileDisplayer.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class InstructorProfileDisplayer: ProfileDisplayerProtocol {
    func profileDisplayer(user: User) {
        let  obtainedProfile = user as? Instructor
        guard let instructorProfile = obtainedProfile else {
            print("Something went wrong")
            return
        }
        print("\n")  
        print("Name                 : ", instructorProfile.name)
        print("Gender               : ", instructorProfile.gender)
        print("DOB                  : ", instructorProfile.dob)
        print("No Of Courses Offered: ", instructorProfile.noOfCoursesOffered)
        print("Phone No             : ", instructorProfile.getPhoneNo())
        print("Email Id             : ", instructorProfile.emailId)
        print("Skill Set            : ", instructorProfile.skillSet)
        print("User Id              : ", instructorProfile.userId)
        if let about = instructorProfile.about {
            print("About            : ", about)
        }
    }
}
