//
//  structs.swift
//  testingWithJacek
//
//  Created by Steven Newman on 11/18/22.
//

import Foundation

enum EmployeeType: CaseIterable, CustomStringConvertible {
    case exempt
    case nonExempt
    case partTime
    
    var description: String {
        
        switch self {
        case .exempt:
            return "USER EXEMPT"
        case .nonExempt:
            return "USER NONEXEMPT"
        case .partTime:
            return "USER PART TIME"
        }
    }
}


struct Employee {
    var name: String
    var DOB: Date
    var employeeType: EmployeeType
}



