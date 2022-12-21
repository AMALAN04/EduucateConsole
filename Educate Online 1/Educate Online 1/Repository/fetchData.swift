//
//  fetchData.swift
//  Educate Online 1
//
//  Created by amalan-pt5585 on 05/08/22.
//

import Foundation

class FetchData: FetchDataPotocol {
    func lastInsertedCourseId() -> Int {
        let lastInserted = courseData.sorted(by:{$0.id < $1.id})  // sort array based on id (Shorthand closure)
        guard let lastValue = lastInserted.last else{
            return 1
        }
        return lastValue.id
    }
    
    func userProfile(userId: String) throws-> User {
        let user = userData[userId]
        guard let userProfile = user else{
            throw ConnectivityError.connectivityError
        }
        return userProfile
    }
    
    func offeredCoursesBy(instructorId: String) throws -> [CourseOutLook] {
        var courseDetails: [CourseOutLook] = []
        for course in courseData {
            if(course.instructorId == instructorId) {
                courseDetails.append(CourseOutLook(courseId: course.id, courseName: course.name, price: course.price))
            }
        }
        return courseDetails
    }
    
    func courseDetails(courseId: Int) throws -> Course? {
        for course in courseData {
            if course.id == courseId {
                return course
            }
        }
        return nil
    }
    
    func allCourses() throws -> [CourseOutLook] {
        var courseDetails: [CourseOutLook] = []
        for course in courseData {
            courseDetails.append(CourseOutLook(courseId: course.id, courseName: course.name, price: course.price))
        }
        return courseDetails
    }
    
    func coursesOfCategory(category: Category) throws -> [CourseOutLook] {
        var courseDetails: [CourseOutLook] = []
        for course in courseData {
            if category == course.category {
                courseDetails.append(CourseOutLook(courseId: course.id, courseName: course.name, price: course.price))
            }
        }
        return courseDetails
    }
    
    func coursesStartsWith(name: String) throws -> [CourseOutLook] {
        var courseDetails: [CourseOutLook] = []
        for course in courseData {
            if course.name.hasPrefix(name) {
                courseDetails.append(CourseOutLook(courseId: course.id, courseName: course.name, price: course.price))
            }
        }
        return courseDetails
    }
    
    func optedCouses(studentId: String)throws -> [CourseOutLook] {
        let courseDetails:[CourseOutLook] = []
        guard let courses = optedCoursesData[studentId] else {
            return courseDetails
        }
        return courses
    }
    
}

