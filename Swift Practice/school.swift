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

struct Class {
    
    var name: String
    var teacher: String
    var students: [Student]
    
    func listStudents() -> String {
        var output:String = ""
        for student in students {
            output += student.description() + "\n"
        }
        return output
    }
    
    func studentGradeAverage() -> Double {
        var sum: Double = 0
        
        for student in students {
            sum += student.grade
        }
        
        return sum / Double(students.count)
    }
    
}

struct Grade {
    
    var gradeLevel: Int
    var classes: [String: Class]
    
}

struct School {
    
    var name: String
    var grades: [Int: Grade]
    
}

func schoolProgram() {
    /*
    let richardsonMiddleSchool = School(name: "Richardson Middle School", grades: [
        8: Grade(gradeLevel: 8, classes: [
            "Math 101": Class(name: "math", teacher: "Mr. E", students: [
                Student(id: 1, name: "Preston", grade: 4.0),
                Student(id: 2, name: "Nathan", grade: 3.3),
                Student(id: 3, name: "Josh", grade: 3.8),
                Student(id: 4, name: "No Name", grade: 2.7),
                Student(id: 5, name: "Another Name", grade: 3.5)
            ])
        ])
    ])
    
    print(richardsonMiddleSchool.grades[8]!.classes["Math 101"]!.students.first!.description())
    */
    
    var keepLooping = true
    
    var students = [Student]()
    
    print("Welcome to the Student Enroller. Here are your choices:")
    
    while keepLooping {
        
        
        //for student in students {
        //    print(student.description())
        //}
        
        print("There \(students.count != 1 ? "are" : "is") \(pluralize(n: students.count, singular: "student", plural: "students")).")
        
        print("Type any one of the following choices:\n  add:  add a student\n  list: list the students\n  exit: stop adding\n")
        let response = readLine()
        
        if let unwrappedResponse = response {
            
            if unwrappedResponse == "add" {
                
                var newStudent = Student(id: 0, name: "", grade: 0.0)
                
                print("What's the student's name?")
                let newName = readLine()
                
                if let unwrappedName = newName {
                    newStudent.name = unwrappedName
                }
                
                print("What's the student's ID?")
                let newId = readLine()
                
                if let unwrappedId = newId {
                    newStudent.id = Int(unwrappedId)!
                }
                
                print("What's the student's grade?")
                let newGrade = readLine()
                
                if let unwrappedGrade = newGrade {
                    newStudent.grade = Double(unwrappedGrade)!
                }
                
                //print(newStudent.description())
                students.append(newStudent)
            }
            else if unwrappedResponse == "list" {
                for student in students {
                    print(student.description())
                }
            }
            else if unwrappedResponse == "exit" {
                keepLooping = false
            }
            
        }
        
        
    }
    
    
    
    
}
    
