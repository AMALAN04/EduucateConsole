//
//  course.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 04/08/22.
//

import Foundation

class Course {
    private (set) var instructorId: String
    var id: Int
    var name: String
    var category: Category
    var description: String
    // var rating: Float
    //var noOfStudents: Int
    var price: Int
    init( id: Int, name: String, description: String, price: Int, instructorId: String, category: Category){
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        self.category = category
        self.instructorId = instructorId
    }
}
