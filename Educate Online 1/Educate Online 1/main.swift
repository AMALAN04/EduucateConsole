//
//  main.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 03/08/22.
//
/*
 Application Name: "Educate"
 Whether you want to learn or to share what you know, you’ve come to the right place.
 As a global destination for online learning, we connect people through knowledge.
 ----------------------------
 Student Functionality:
 View Course List
 View Course Details
 Purchase Course
 View Opted Courses.
 View My Profile
 Update My Profile
 Password Reset
 ----------------------------
 Instructor Functionality:
 Create new course
 Update Course
 Delete Course(On going)
 View My Profile
 Update My Profile
 Password Reset
 */



import Foundation

var choiceStatus: Bool = true
var userData: [String : User] = [:]
var courseData: [Course] = []
var offeredCourses: [(courseId: Int, courseName: String)] = []
var optedCoursesData: [String : [CourseOutLook]] = [:]
let verify: VerifyProtocol =  DatabaseRelatedObjects.verify
let register: UserRegistrationProtocol = CommonObjects.register
let noValue: Int = 0
DataBase.loadUserData(userData: &userData)
DataBase.loadCourseData(courseData: &courseData)
var mainLoopFlag: Bool = true
while mainLoopFlag {
    print(Onboarding.menu)
    let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
    let userChoice = Onboarding(rawValue: userInput)
    switch userChoice {
    case .logIn:
        print("Enter your userId: ", terminator: "")
        let userId = readLine()
        print("Enter your password: ", terminator: "")
        let password = readLine()
        guard (userId != nil && password != nil) else {
            break
        }
        let loginStatus = verify.login(id: userId!, password: password!)
        if loginStatus.status {
            guard let name = loginStatus.userName else {
                break
            }
            guard let functionality = loginStatus.functionality else {
                break
            }
            print("\n")
            print("Welcome Back \(name)")
            functionality.functionalityPreview(userId: userId!)   //Already verified - forced unwrap
        } else{
            print("Invalid")
        }
    case .signUp:
        var signInLoopFlag: Bool = true
        while signInLoopFlag {
            print("\n" + Designation.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let signInAs = Designation(rawValue: userInput)
            switch signInAs {
            case .student:
                signInLoopFlag = false
                if (register.register(as: .student)) {
                    print("Registered Successfully")
                } else {
                    print("Something went wrong")
                }
            case .instructor:
                signInLoopFlag = false
                if (register.register(as: .instructor)) {
                    print("\nRegistered Successfully\n")
                }
                else {
                    print("Something went wrong")
                }
            default:
                print("Invalid input")
            }
        }
    default:
        print("Invalid input")
    }
}
