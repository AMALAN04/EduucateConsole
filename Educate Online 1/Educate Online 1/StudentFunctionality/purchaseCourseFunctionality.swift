//
//  purchaseCourseFunctionality.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 11/08/22.
//

import Foundation

class PurchaseCourseFunctiionality: PurchaseFunctionalityProtocol {
    let verify: VerifyProtocol = DatabaseRelatedObjects.verify
    let purchase: PurchaseCourseProtocol = StudentRelatedObjects.purchase
    
    func showPurchaseFunctionality(studentId: String, course: Course) {
        var purchaseFlag: Bool = true
        while purchaseFlag {
            print("\n" + PurchaseCourseOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = PurchaseCourseOptions(rawValue: userInput)
            switch userChoice {
            case .purchaseCourse:
                print("Pay Rs: \(course.price)")
                print("To conform payment ", terminator: "")
                let status = verify.user(userId: studentId)
                if status {
                    purchase.purchaseCourse(studentId: studentId, course: course)
                } else {
                    print("Password Mismatch")
                    continue
                }
                return
            case .back:
                print("Back")
                purchaseFlag = false
            default:
                print("Invalid")
                continue
            }
        }
    }
}

