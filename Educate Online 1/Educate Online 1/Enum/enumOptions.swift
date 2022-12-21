//
//  enumOptions.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 12/08/22.
//

import Foundation

protocol PrintOptions {
    var printOptions:String {get}
}

enum Onboarding: Int, CaseIterable, PrintOptions {
    case logIn = 1
    case signUp
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: Onboarding.self)
    }
    
    var printOptions: String {
        switch self {
        case .logIn:
            return "Log in"
        case .signUp:
            return "Sign up"
        }
    }
}

enum Designation: Int, CaseIterable, PrintOptions {
    case student = 1
    case instructor
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: Designation.self)
    }
    
    var printOptions: String {
        switch self {
        case .student:
            return "Student"
        case .instructor:
            return "Instructor"
        }
    }
}

enum Gender: Int, CaseIterable, PrintOptions {
    case male = 1
    case female
    case others
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: Gender.self)
    }
    
    var printOptions: String {
        switch self {
        case .male:
            return "Male"
        case .female:
            return "Female"
        case .others:
            return "Others"
        }
    }
}

enum InstructorFunctionalityOptions: Int, CaseIterable, PrintOptions {
    case viewProfile = 1
    case createCourse
    case viewOfferedCourses
    case signOut
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: InstructorFunctionalityOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .viewProfile:
            return "View profile"
        case .createCourse:
            return "Create course"
        case .viewOfferedCourses:
            return "View offered courses"
        case .signOut:
            return "Sign out"
        }
    }
}

enum EditProfileOptions: Int, CaseIterable, PrintOptions {
    case editProfile = 1
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: EditProfileOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .editProfile:
            return "Edit profile"
        case .back:
            return "Back"
        }
    }
    
}

enum Category: Int, CaseIterable, PrintOptions {
    case biology = 1
    case physics
    case maths
    case chemistry
    case others
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: Category.self)
    }
    
    var printOptions: String {
        switch self {
        case .biology:
            return "Biology"
        case .physics:
            return "Physics"
        case .maths:
            return "Maths"
        case .chemistry:
            return "Chemistry"
        case .others:
            return "Others"
        }
    }
}

enum UpdateCourseOptions: Int, CaseIterable, PrintOptions {
    case name = 1
    case category
    case description
    case price
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: UpdateCourseOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .name:
            return "Name"
        case .category:
            return "Category"
        case .description:
            return "Description"
        case .price:
            return "Price"
        case .back:
            return "Back"
        }
    }
}

enum ModifyOfferedCoursesOptions: Int, CaseIterable, PrintOptions {
    case updateCourse = 1
    case deleteCourse
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: ModifyOfferedCoursesOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .updateCourse:
            return "Update course"
        case .deleteCourse:
            return "Delete course"
        case .back:
            return "Back"
        }
    }
}

enum ViewFullcourseOptions: Int, CaseIterable, PrintOptions {
    case viewFullCourse = 1
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: ViewFullcourseOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .viewFullCourse:
            return "View full course"
        case .back:
            return "Back"
        }
    }
}

enum InstructorEditProfileOptions: Int, CaseIterable, PrintOptions {
    case name = 1
    case gender
    case dob
    case phoneNo
    case emailId
    case skillSet
    case about
    case password
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: InstructorEditProfileOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .name:
            return "Name"
        case .gender:
            return "Gender"
        case .dob:
            return "DOB"
        case .phoneNo:
            return "Phone no"
        case .emailId:
            return "Email id"
        case .skillSet:
            return "Skill set"
        case .about:
            return "About"
        case .password:
            return "Password"
        case .back:
            return "Back"
        }
    }
}

enum StudentFunctionalityOptions: Int, CaseIterable, PrintOptions {
    case viewProfile = 1
    case viewCourseList
    case viewOptedCourses
    case signOut
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: StudentFunctionalityOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .viewProfile:
            return "View Profile"
        case .viewCourseList:
            return "View course list"
        case .viewOptedCourses:
            return "View opted courses"
        case .signOut:
            return "Sign out"
        }
    }
}

enum PurchaseCourseOptions: Int, CaseIterable, PrintOptions {
    case purchaseCourse = 1
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: PurchaseCourseOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .purchaseCourse:
            return "Purchase course"
        case .back:
            return "Back"
        }
    }
}

enum FilterOptions: Int, CaseIterable, PrintOptions {
    case byDefault = 1
    case sortByPrice
    case sortByName
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: FilterOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .byDefault:
            return "Default"
        case .sortByPrice:
            return "Sort by price(low to high)"
        case .sortByName:
            return "Sort by name"
        }
    }
}

enum StudentEditProfileOptions: Int, CaseIterable, PrintOptions {
    case name = 1
    case gender
    case dob
    case phoneNo
    case emailId
    case skillSet
    case password
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: StudentEditProfileOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .name:
            return "Name"
        case .gender:
            return "Gender"
        case .dob:
            return "DOB"
        case .phoneNo:
            return "Phone no"
        case .emailId:
            return "Email id"
        case .skillSet:
            return "Skill Set"
        case .password:
            return "Password"
        case.back:
            return "Back"
        }
    }
}

enum ViewCourseListOptions: Int, CaseIterable, PrintOptions {
    case viewAllCourses = 1
    case searchByCategory
    case searchByInstructorId
    case searchByCourseId
    case searchByCourseName
    case back
    
    static var menu: String {
        MenuBuilder.menuBuilder(enumType: ViewCourseListOptions.self)
    }
    
    var printOptions: String {
        switch self {
        case .viewAllCourses:
            return "View all courses"
        case .searchByCategory:
            return "Search by category"
        case .searchByInstructorId:
            return "Search by InstructorId"
        case .searchByCourseId:
            return "Search by CourseId"
        case .searchByCourseName:
            return "Search by course name"
        case .back:
            return "Back"
        }
    }
}

class MenuBuilder {
    static func menuBuilder<container: RawRepresentable & CaseIterable & PrintOptions>(enumType: container.Type) -> String {
        var tempString = ""
        for caseValue in enumType.allCases {
            let caseRawValue = caseValue.rawValue
            tempString += "\(caseRawValue) -> \(caseValue.printOptions)\n"
        }
        return tempString
    }
}

