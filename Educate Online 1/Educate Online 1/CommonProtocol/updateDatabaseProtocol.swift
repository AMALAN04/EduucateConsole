//
//  updateDatabase.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 08/08/22.
//

import Foundation

protocol UpdateDatabaseProtocol {
    func increaseNoOfCoursesOffered(userId: String) throws
    func decreaseNoOfCoursesOffered(userId: String) throws
    func increaseNoOfCoursesOpted(userId: String) throws 
}
