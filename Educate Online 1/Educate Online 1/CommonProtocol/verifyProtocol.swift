//
//  verifyLogin.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

protocol  VerifyProtocol {
    func login (id: String, password: String) -> (status: Bool, userName: String?, functionality: ShowFunctionality?)
    func user(userId: String) -> Bool
    func newBuyer(studentId: String) -> Bool
    func courseAlreadyBought(courseId: Int, studentId: String) -> Bool 
}
