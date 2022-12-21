//
//  setCategoryFunctionality.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class SetCategory: SetCategoryProtocol {
    func setCategory() -> Category {
        var loopFlag: Bool = true
        var returnValue: Category = .others
        while loopFlag{
            print("\n" + Category.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let category = Category(rawValue: userInput)
            switch  category {
            case .biology:
                loopFlag = false
                returnValue = .biology
            case .physics:
                loopFlag = false
                returnValue = .physics
            case .maths:
                loopFlag = false
                returnValue = .maths
            case .chemistry:
                loopFlag = false
                returnValue = .chemistry
            case .others:
                loopFlag = false
                returnValue = .others
            default:
                print("Invalid Input")
            }
        }
        return returnValue
    }
}
