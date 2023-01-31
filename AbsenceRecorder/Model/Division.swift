//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Jaswal, Eesa (SPH) on 31/01/2023.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        for i in 1...size {
            let student = Student(forename: "Forename\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "CComX-1", of: 11),
                           Division.createDivision(code: "DComY-2", of: 12),
                           Division.createDivision(code: "EComZ-3", of: 13),]
    #endif
    
}
