//
//  DoctorData.swift
//  MedManage
//
//  Created by Thrishalini on 21/04/23.
//

import Foundation
import UIKit

class DocotorHomePage {
    var listOfPatient: [PatientProfile] = [
        PatientProfile(
            firstName: "John",
            lastName: "Doe",
            profilePicture: "https://example.com/johndoe.jpg",
            patientID: 000001,
            hospitalID:00001,
            age: 40,
            bloodGroup: BloodGroup.Op,
            dateOfBirth: Date(timeIntervalSince1970: 365*24*60*60*40),
            height: 180,
            weight: 80,
            bodyMassIndex: 24,
            phoneNumber: "+91 9123451234",
            residentialAddressLine1: "123 Main St.",
            residentialAddressLine2: "",
            residentialAddressLine3: "Delhi, 110001",
            familyMembers: [
                FamilyMember(userID: "PAT000015", relation: "Spouse", relativeName: "Jane"),
                FamilyMember(userID: "PAT000048", relation: "Child", relativeName: "Billy")
            ],
            lastVisitDate: Date(),
            appointments: [
                Appointment(
                    appointmentID: APT00001,
                    hospitalID: HSP00001,
                    doctorID: DOC00001,
                    patientID: PAT000001,
                    diagnosisRoom: Exam Room 1,
                    timeSlotStartString: "2:00 PM",
                    timeSlotEndString: "3:00 PM",
                    date: Date(timeIntervalSinceNow: 86400),
                    reports: Report(
                        diagnosisImage: "https://example.com/diagnosis.jpg",
                        diagnosisString: "Common cold",
                        reportID: "RPT00001",
                        appointmentID: "APT000001",
                        reportDate: Date(),
                        medicines: [
                            Medicine(
                                medicineName: "Acetaminophen",
                                medicineID: "MED000001",
                                medicinePrice: "$10.00",
                                medicineWhen: [
                                    MedicineWhen(
                                        medicineSession: .breakfast,
                                        medicineBOA: .after,
                                        medicineQuantityPerSession: 1
                                    ),
                                    MedicineWhen(
                                        medicineSession: .dinner,
                                        medicineBOA: .before,
                                        medicineQuantityPerSession: 1
                                    )
                                ]
                            )
                        ],
                        labTests: [
                      "BloodTest",
                            "MRIScan"
                        ]
                    )
                )
            ]
        ), //Patient 1 details end here
        
        
        PatientProfile(
            firstName: "Emma",
            lastName: "Wilson",
            profilePicture: "https://example.com/profiles/emma-wilson.png",
            patientID: 3254222,
            hospitalID: 7923498,
            age: 35,
            bloodGroup: .Bp,
            dateOfBirth: DateComponents(year: 1988, month: 5, day: 15).date!,
            height: 170,
            weight: 65,
            bodyMassIndex: nil,
            phoneNumber: "+91 9324213642",
            residentialAddressLine1: "123 Main St",
            residentialAddressLine2: "Apt 4B",
            residentialAddressLine3: "New York, NY 10001",
            familyMembers: [
                FamilyMember(userID: 12, relation: "Spouse", relativeName: "John Wilson"),
                FamilyMember(userID: 13, relation: "Child", relativeName: "Olivia Wilson")
            ],
            lastVisitDate: DateComponents(year: 2022, month: 3, day: 1).date!,
            appointments: [
                Appointment(
                    appointmentID: "APT00002",
                    hospitalID: "HSP00001",
                    doctorID: "DCT00001",
                    patientID: "PAT000002",
                    diagnosisRoom: "Room 3",
                    timeSlotStartString: "09:00 AM",
                    timeSlotEndString: "10:00 AM",
                    date: DateComponents(year: 2022, month: 3, day: 1).date!,
                    reports: Report(
                        diagnosisImage: nil,
                        diagnosisString: "Common cold",
                        reportID: "RPT00003",
                        appointmentID: "APT00010",
                        reportDate: DateComponents(year: 2022, month: 3, day: 1).date!,
                        medicines: [
                            Medicine(
                                medicineName: "Ibuprofen",
                                medicineID: "M003",
                                medicinePrice: "10.00",
                                medicineWhen: [
                                    MedicineWhen(
                                        medicineSession: .breakfast,
                                        medicineBOA: .after,
                                        medicineQuantityPerSession: 1
                                    ),
                                    MedicineWhen(
                                        medicineSession: .lunch,
                                        medicineBOA: .before,
                                        medicineQuantityPerSession: 2
                                    ),
                                    MedicineWhen(
                                        medicineSession: .dinner,
                                        medicineBOA: .before,
                                        medicineQuantityPerSession: 2
                                    )
                                ]
                            )
                        ],
                        labTests: nil
                    )
                )
            ]
        ), //Patient 2 details end here
        
        
        
        PatientProfile(
                firstName: "John",
                lastName: "Doe",
                profilePicture: "https://example.com/johndoe.jpg",
                patientID: "PAT000003",
                hospitalID: "HSP00001",
                age: 40,
                bloodGroup: .Op,
                dateOfBirth: Date(timeIntervalSince1970: 365*24*60*60*40),
                height: 180,
                weight: 80,
                bodyMassIndex: 24,
                phoneNumber: "+91 9123456788",
                residentialAddressLine1: "123 Main St.",
                residentialAddressLine2: "",
                residentialAddressLine3: "New York, NY 10001",
                familyMembers: [
                    FamilyMember(userID: "PAT000022", relation: "Spouse", relativeName: "Jane"),
                    FamilyMember(userID: "PAT000023", relation: "Child", relativeName: "Billy")
                ],
                lastVisitDate: Date(),
                appointments: [
                    Appointment(
                        appointmentID: "APT000002",
                        hospitalID: "HSP001",
                        doctorID: "DOC001",
                        patientID: "PAT001",
                        diagnosisRoom: "Exam Room 1",
                        timeSlotStartString: "2:00 PM",
                        timeSlotEndString: "3:00 PM",
                        date: Date(timeIntervalSinceNow: 86400),
                        reports: Report(
                            diagnosisImage: "https://example.com/diagnosis.jpg",
                            diagnosisString: "Common cold",
                            reportID: "RPT00011",
                            appointmentID: "APT00011",
                            reportDate: Date(),
                            medicines: [
                                Medicine(
                                    medicineName: "Acetaminophen",
                                    medicineID: "MED001",
                                    medicinePrice: "100.0",
                                    medicineWhen: [
                                        MedicineWhen(
                                            medicineSession: .breakfast,
                                            medicineBOA: .after,
                                            medicineQuantityPerSession: 1
                                        ),
                                        MedicineWhen(
                                            medicineSession: .dinner,
                                            medicineBOA: .before,
                                            medicineQuantityPerSession: 1
                                        )
                                    ]
                                )
                            ],
                            labTests: [LabTest.SalivaTest, LabTest.BloodTest]
                        )
                    )
                ]
            ) //Patient 3 details end here
    ]
}


//Doctor Profile details
class DoctorProfilePage {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = "yyyy-mm-dd"

    var doctorProfile: [DoctorProfile] = [
        DoctorProfile(
        firstName: "John",
        lastName: "Doe",
        profilePicture: "https://example.com/profile.jpg",
        doctorID: "DCT123456",
        hospitalID: "HSP123456",
        age: 35,
        dateOfBirth: Date(timeIntervalSince1970: 1000000000),
        phoneNumber: "+91 9876543211",
        residentialAddressLine1: "123 Main St",
        residentialAddressLine2: "Apt 4",
        residentialAddressLine3: "Anytown, USA",
        specialization: "Cardiology",
        yearsOfExperience: 10,
        appointments: [
            Appointment(
                appointmentID: "APT12345",
                hospitalID: "HSP12345",
                doctorID: "DCT123456",
                patientID: "PAT123456",
            //    doctorDept: "Cardiology",
            //    doctorExperience: "10 years",
                diagnosisRoom: "Room 101",
                timeSlotStartString: "9:00 AM",
                timeSlotEndString: "10:00 AM",
                date: Date(timeIntervalSince1970: 2000000000),
                reports: nil
            )
        ]
        ),
        //first doctor profile details end here
        
        
    ]
}


