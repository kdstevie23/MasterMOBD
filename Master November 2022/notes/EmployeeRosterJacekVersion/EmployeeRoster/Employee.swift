
import Foundation

enum EmployeeType: CaseIterable, CustomStringConvertible
{
    case fullTime
    case partTime
    case shiftPickup

    var description: String
    {
        
        switch self
        {
        case .fullTime:
            return "Full Time"
        case .partTime:
            return "Part-Time"
        case .shiftPickup:
            return "Shift Picker Upper"
        }
    }
}

struct Employee
{
    var name: String
    var dateOfBirth: Date
    var employeeType: EmployeeType
}
