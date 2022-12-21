//
//  removeData.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 09/08/22.
//

import Foundation

class RemoveData: RemoveDataProtocol {
    func removeCourse(courseId: Int) throws -> Bool{
        for index in courseData.indices{
            if courseId == courseData[index].id {
                courseData.remove(at: index)
                return true
            }
        }
        return false
    }
}
