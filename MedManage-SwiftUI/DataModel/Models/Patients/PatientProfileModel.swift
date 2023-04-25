//
//  PatientDataModel.swift
//  MedManage
//
//  Created by Thrishalini on 20/04/23.
//

import Foundation
import UIKit

struct FamilyMember {
    var userID : UInt
    var relation : String
    var relativeName: String
    var DoctorRequest : Bool
    var RelativeRequest : Bool
}
struct PatientProfile{
    var firstName : String
    var lastName : String
    var profilePicture : String?
    var patientID : UInt
    var hospitalID : UInt
    var age: Int
    var bloodGroup :BloodGroup
    var dateOfBirth : Date
    var height: Int
    var weight: Int
    var bodyMassIndex : Int?
    var phoneNumber : String
    var residentialAddressLine1: String
    var residentialAddressLine2: String
    var residentialAddressLine3 : String
    var familyMembers : [FamilyMember]?
    var lastVisitDate : Date
    var appointments:[Appointment]?
//    var pastAppointments:[Appointment]?
    
}

enum BloodGroup: String{

    case Op = "O+"
    case On = "O-"
    case Ap = "A+"
    case An = "A-"
    case Bp = "B+"
    case Bn = "B-"
    case ABp = "AB+"
    case ABn = "AB-"
    
}


