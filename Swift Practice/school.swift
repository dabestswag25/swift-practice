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
    
    func classDescription() -> String {
        return "\(name) taught by \(teacher) (\(pluralize(n: students.count, singular: "student", plural: "students")))"
    }
    
    mutating func addStudents() {
        
        var loop = true
        
        while loop {
            
            print("There \(students.count != 1 ? "are" : "is") \(pluralize(n: students.count, singular: "student", plural: "students")).")
            print(listStudents())
            print("Type any one of the following choices:\n  add:  add a student\n  done: stop adding\n")
            
            let response = readLine()
            
            if let unwrappedResponse = response {
                
                if unwrappedResponse == "add" {
                    addStudent()
                }
                else if unwrappedResponse == "done" {
                    loop = false
                }
                
            }
        }
        
    }
    
    mutating func addStudent() {
        
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
    
}

struct Grade {
    
    var gradeLevel: Int
    var classes: [Class]
    
    func listClasses() -> String {
        var output:String = ""
        for classs in classes {
            output += classs.classDescription() + "\n"
        }
        return output
    }
    
    mutating func addClasses() {
        var classLoop = true
        
        while classLoop {
            
            print("There \(classes.count != 1 ? "are" : "is") \(pluralize(n: classes.count, singular: "class", plural: "classes")).")
            print(listClasses())
            print("Type any one of the following choices:\n  add:  add a class\n  done: stop adding\n")
            let response = readLine()
            
            if let unwrappedResponse = response {
                if unwrappedResponse == "add" {
                    addClass()
                }
                else if unwrappedResponse == "done" {
                    classLoop = false
                }
            }
        }
    }
    mutating func addClass() {
        var newClass = Class(name: "", teacher: "", students: [])
        
        print("What is the subject of the class?")
        let newName = readLine()
        
        if let unwrappedName = newName {
            newClass.name = unwrappedName
        }
        
        print("Who is the teacher of this class?")
        let newTeacher = readLine()
        
        if let unwrappedTeacher = newTeacher {
            newClass.teacher = unwrappedTeacher
        }
        
        newClass.addStudents()
        
        classes.append(newClass)

    }
    
}

struct School {
    
    var name: String
    var grades: [Int: Grade]
    
}

func schoolProgram() {
    
    var myGrade = Grade(gradeLevel: 5, classes: [])
    
    var mathClass = Class(name: "Linear Algebra & Differential Equations", teacher: "Paul Yun", students: [])
    
    myGrade.addClasses()
    
    
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
    
    /*
    var classLoop = true
    
    var students = [Student]()
    
    print("Welcome to the Class Manager.")
    
    var classes = [Class]()
    
    while classLoop {
        
        print("There \(classes.count != 1 ? "are" : "is") \(pluralize(n: classes.count, singular: "class", plural: "classes")).")
    
        print("Type any one of the following choices:\n  add:  add a class\n  list: list the classes\n  exit: stop adding\n")
        let response = readLine()
        
        if let unwrappedResponse = response {
            if unwrappedResponse == "add" {
                var newClass = Class(name: "", teacher: "", students: [])
                
                print("What is the subject of the class?")
                let newName = readLine()
                
                if let unwrappedName = newName {
                    newClass.name = unwrappedName
                }
                
                print("Who is the teacher of this class?")
                let newTeacher = readLine()
                
                if let unwrappedTeacher = newTeacher {
                    newClass.teacher = unwrappedTeacher
                }
                
                classes.append(newClass)
            }
            else if unwrappedResponse == "list" {
                for classs in classes {
                    print(classs.classDescription())
                }
            }
            else if unwrappedResponse == "exit" {
                classLoop = false
            }
        }
        
    }
 */
    
    /*
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
    */
    
    
    
}
    
