//
//  logInDatabase.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation
class DataBase {
    static func loadUserData( userData: inout [ String : User ] ) {
        userData["ravi"] = Student(name:  "ravi", dob: "01-01-2002", gender: "male", phoneNo: "9445567156", emailId: "ravi@gmail.com", skillSet: "C, C++", userId:  "ravi", password:  "1232")
        userData["raju"] = Student(name:  "raju", dob: "01-01-2002", gender: "male", phoneNo: "9445567156", emailId: "raju@gmail.com", skillSet: "C, C++", userId:  "raju", password:  "1234")
        userData["buvi"] = Student(name:  "buvi", dob: "01-01-2002", gender: "female", phoneNo: "9445567156", emailId: "buvi@gmail.com", skillSet: "C, C++", userId:  "buvi", password:  "1235")
        userData["bheem"] = Instructor(name:  "bheem", dob: "01-01-2002", gender: "male", phoneNo: "9445567155", emailId: "bheem@gmail.com", skillSet: "C#, C++", userId:  "bheem", password:  "1123")
        userData["billa"] = Instructor(name:  "billa", dob: "01-01-2002", gender: "male", phoneNo: "9445567155", emailId: "billa@gmail.com", skillSet: "C#, C++", userId:  "billa", password:  "1123")
        userData["ragi"] = Instructor(name:  "ragi", dob: "01-01-2002", gender: "male", phoneNo: "9445567155", emailId: "ragi@gmail.com", skillSet: "C#, C++", userId:  "ragi", password:  "1123")
    }
    
    static func loadCourseData (courseData: inout [Course]) {
        courseData.append(Course(id: 1, name: "Jsk"  , description: "Happy Learning", price: 200, instructorId: "ragi", category:  .chemistry))
        courseData.append(Course(id: 2, name: "Rsk"  , description: "Happy Learning", price: 400, instructorId: "billa", category:  .chemistry))
        courseData.append(Course(id: 3, name: "Psk"  , description: "Happy Learning", price: 200,  instructorId: "bheem", category:  .chemistry))
    }
    
    static func loadCourseId (courseId: inout Set<Int>){
        courseId.insert(1)
        courseId.insert(2)
        courseId.insert(3)
    }
}
