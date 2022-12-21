//
//  instructor.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation

class Instructor: User {
    var noOfCoursesOffered: Int = 0
    var about: String?
    //private (set) var rating:Float = 0
    
    func increaseNoOfCourse() {
        noOfCoursesOffered += 1
    }
    
    func decreaseNoOfCourse() {
        noOfCoursesOffered -= 1
    }
}

