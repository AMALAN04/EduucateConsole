//
//  review.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation
class Review {
    var rating: Float = 0
    var command: String?
    var studentId: String?
    var courseId: String?
    
    init(rating: Float = 0, studentId: String, courseId: String) {
        self.rating = rating
        //self.command = command
        self.studentId = studentId
        self.courseId = courseId
    }
     //convenience init(rating)
}
