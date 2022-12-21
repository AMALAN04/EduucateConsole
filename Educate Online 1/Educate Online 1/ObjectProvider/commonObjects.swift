//
//  commonObjects.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 12/08/22.
//

import Foundation

class CommonObjects {
    static let register: UserRegistrationProtocol = Registration()
    static let editProfile: ProfileFunctionalitiesProtocol =  ProfileFunctionalities()
    static let courseCategory: SetCategoryProtocol = SetCategory()
    static let displayCourses: DisplayCoursesProtocol =  DisplayCourses()
    static let prescenceOfId:SearchCourseIdProtocol = SearchCourseId()
}
