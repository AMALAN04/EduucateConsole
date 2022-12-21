//
//  courseFilters.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 11/08/22.
//

import Foundation

class CourseFilters: CourseFiltersProtocol {
    func showFiltes(courseDetails: inout [CourseOutLook]) {
        var filterFlag = true
        while filterFlag {
            print("\n" + FilterOptions.menu)
            let userInput = Int(ReadValue.containsOnlyInt(context: "Enter your choice: ")) ?? noValue
            let userChoice = FilterOptions(rawValue: userInput)
            switch userChoice {
            case .byDefault:
                print("Default")
                filterFlag = false
            case .sortByPrice:
                print("sortByPrice")
                courseDetails = courseDetails.sorted(by:{$0.price < $1.price}) // sort array based on price (Shorthand closure)
                filterFlag = false
            case .sortByName:
                courseDetails = courseDetails.sorted(by:{$0.courseName < $1.courseName}) // sort array based on name (Shorthand closure)
                print("sortByName")
                filterFlag = false
            default:
                print("Invalid input")
            }
        }
    }
}
