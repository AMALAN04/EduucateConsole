//
//  student.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation

class Student: User {
    private (set) var noOfCourseOpted = 0
    
    func increaseNoOfCoursesOpted() {
        noOfCourseOpted += 1
    }
    
}
