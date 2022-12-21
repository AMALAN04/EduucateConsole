//
//  createCourse.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class CreateCourse: CreateCourseProtocol {
    let courseCategory: SetCategoryProtocol = CommonObjects.courseCategory
    let fetchData: FetchDataPotocol = DatabaseRelatedObjects.fetchData
    let pushData: PushDataProtocol = DatabaseRelatedObjects.pushData
    let updateData: UpdateDatabaseProtocol =  DatabaseRelatedObjects.updateData
    
    func setCourseDetails(instructorId: String) -> Bool {
        let instructorId: String = instructorId
        let id: Int = (fetchData.lastInsertedCourseId() + 1)
        let name = ReadValue.onlyAlphabets(context: "Enter your course name: ")
        let category: Category = courseCategory.setCategory()
        print("Enter course description: ", terminator: "")
        let  description: String =  readLine() ?? "-"
        let price: Int = Int(ReadValue.containsOnlyInt(context: "Enter course price: ")) ?? 0
        let course = Course(id: id, name: name, description: description, price: price, instructorId: instructorId, category: category)
        do {
            try pushData.newCourse(course: course)
            try updateData.increaseNoOfCoursesOffered(userId: instructorId)
            return true
        } catch {
            return false
        }
    }
}
