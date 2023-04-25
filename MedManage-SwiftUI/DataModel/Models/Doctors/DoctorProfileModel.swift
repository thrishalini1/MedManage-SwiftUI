//
//  DoctorProfileModel.swift
//  MedManage
//
//  Created by Indrajeet Gupta on 20/04/23.
//

import Foundation
import UIKit
// Doctor Profile Structure
struct DoctorProfile {
    var firstName: String
    var lastName: String
    var profilePicture: String?
    var doctorID: UInt
    var hospitalID: UInt
    var age: Int
    var dateOfBirth: Date
    var phoneNumber: String
    var residentialAddressLine1: String
    var residentialAddressLine2: String
    var residentialAddressLine3: String
    var department : Department
    var specialization: [String]
    var yearsOfExperience: Int
    var appointments: [Appointment]?
    
//    func EditDoctorProfile(){
//
//    }
    
}


struct Department {
    var departmentID: Int
    var departmentName:String
}


