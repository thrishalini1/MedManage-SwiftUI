//
//  DataModel.swift
//  MedManage
//
//  Created by Thrishalini on 20/04/23.
//

import Foundation
import UIKit


class DataModel{
    
    private var offers :[ Offer ]
    private var patientProfile: PatientProfile
    init(){
        patientProfile =
        PatientProfile(
            firstName: "Thrishalini",
            lastName: "Dwaraknath",
            patientID: 71234576,
            hospitalID:11234567,
            age: 19,
            bloodGroup: BloodGroup.Op,
            dateOfBirth: Date.now,
            height: 160,
            weight: 70,
            bodyMassIndex: 6,
            phoneNumber: "9677285350",
            residentialAddressLine1: "oldno:78,new no:113",
            residentialAddressLine2: "Triplicane",
            residentialAddressLine3: "Chennai - 600 005",
            familyMembers:
                [FamilyMember(userID: 71234577, relation: "parent", relativeName: "John Doe Sr.",   DoctorRequest:true,RelativeRequest:false)],
            lastVisitDate: Date.now,
            appointments: [
                Appointment(
                    appointmentID: 61234570,
                    hospitalID: 11234567,
                    doctorID: 21234569,
                    patientID: 71234576,
                    department: Department(departmentID: 81234570, departmentName: "Gastroenterology"),
                    diagnosisRoom: "UB5671",
                    timeSlotStartString: "4:00 PM",
                    timeSlotEndString: "5:00 PM",
                    date: Date.now,
                    reports: nil
                    ),
                Appointment(
                    appointmentID: 61234571,
                    hospitalID: 11234567,
                    doctorID: 21234569,
                    patientID: 71234576,
                    department: Department(departmentID: 81234570, departmentName: "Gastroenterology"),
                    diagnosisRoom: "UB5671",
                    timeSlotStartString: "5pm",
                    timeSlotEndString: "6pm",
                    date: Date.now,
                    reports:
                        Report(
                            diagnosisImage: "yuio",
                            diagnosisString:"she has a common cold",
                            reportID: 51234570,
                            appointmentID: 61234571,
                            reportDate:Date.now,
                            medicines: [
                                Medicine(
                                    medicineName:"Paracetamol",
                                    medicineID: 31234570,
                                    medicinePrice: 45.60,
                                    medicineWhen: [
                                        MedicineWhen(
                                            medicineSession: MedicineSession.breakfast,
                                            medicineBOA: BOA.after,
                                            medicineQuantityPerDose: 1
                                        ),
                                        MedicineWhen(medicineSession: MedicineSession.lunch,
                                                     medicineBOA: BOA.after,
                                                     medicineQuantityPerDose: 1)
                                    ],
                                    medicineDuration: 5
                                )
                            ]
                        )
                            
                    )
                        ]
         )
        
        
        offers = [
            Offer(
                offerID: 91234567,
                offerPhoto: "medicine offer",
                textDescription: "best offer you would recieve ",
                CoupenCode: "889995"
            ),
            Offer(
                offerID: 91234568,
                offerPhoto: "medicine offer",
                textDescription: "best offer you would recieve ",
                CoupenCode: "889995"
            )
        ]
        
    }
}



//struct Offer{
//    var offerID : String
//    var offerPhoto: String
//    var textDescription : String
//    var CoupenCode : String
//
//}




