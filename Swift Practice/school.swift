//
//  school.swift
//  Swift Practice
//
//  Created by UCode on 11/17/17.
//  Copyright © 2017 Preston Tran. All rights reserved.
//

import Foundation

struct Student {
    
    var id:    Int
    var name:  String
    var grade: Double
    
    func description() -> String {
        return "\(name) (\(id)) with GPA \(grade)"
    }
    
}

func studentGradeAverage(students: [Student]) -> Double {
    var sum: Double = 0
    
    for student in students {
        sum += student.grade
    }
    
    
    return sum / Double(students.count)
}

func listOfStudents(students: [Student]) -> String {
    for student in students {
        print()
    }
}

func schoolProgram() {
    
    let students = [
        Student(id: 1, name: "Preston", grade: 4.0),
        Student(id: 2, name: "Nathan", grade: 3.3),
        Student(id: 3, name: "Josh", grade: 3.8),
        Student(id: 4, name: "No Name", grade: 2.7),
        Student(id: 5, name: "Another Name", grade: 3.5)
    ]
    
    print(studentGradeAverage(students: students))
    
}
    
