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
            patientID: "1313",
            hospitalID: "APPOLO-DPV",
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
                [FamilyMember(userID: "fm1", relation: "parent", relativeName: "John Doe Sr.",DoctorRequest:true,RelativeRequest:false)],
            lastVisitDate: Date.now,
            appointments: [
                Appointment(
                    appointmentID: "3456",
                    hospitalID: "APPOLO-DPV",
                    doctorID: "8890",
                    patientID: "1313",
                    diagnosisRoom: "UB5671",
                    timeSlotStartString: "4pm",
                    timeSlotEndString: "5pm",
                    date: Date.now),
                Appointment(
                    appointmentID: "3458",
                    hospitalID: "APPOLO-DPV",
                    doctorID: "6778",
                    patientID: "1313",
                    diagnosisRoom: "UB5671",
                    timeSlotStartString: "5pm",
                    timeSlotEndString: "6pm",
                    date: Date.now,
                    reports:
                        Report(
                            diagnosisImage: "yuio",
                            diagnosisString:"she has a common cold",
                            reportID: "8230",
                            appointmentID: "3458",
                            reportDate:Date.now,
                            medicines: [
                                Medicine(
                                    medicineName:"Paracetamol",
                                    medicineID: "770",
                                    medicineWhen: [
                                        MedicineWhen(
                                            medicineSession: MedicineSession.breakfast,
                                            medicineBOA: BOA.after,
                                            medicineQuantityPerSession: 2
                                        ),
                                        MedicineWhen(medicineSession: MedicineSession.breakfast,
                                                     medicineBOA: BOA.before,
                                                     medicineQuantityPerSession: 2)
                                    ]
                                )
                            ]
                        )
                            
                    )
                        ]
         )
        
        
        offers = [
            Offer(
                offerID: "638745",
                offerPhoto: "medicine offer",
                textDescription: "best offer you would recieve ",
                CoupenCode: "889995"
            ),
            Offer(
                offerID: "638745",
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




