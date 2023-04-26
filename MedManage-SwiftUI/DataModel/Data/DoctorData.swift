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
            patientID: 71234567,
            hospitalID:11234567,
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
                FamilyMember(userID: 71234568, relation: "Spouse", relativeName: "Jane", DoctorRequest: false, RelativeRequest: false),
                FamilyMember(userID: 71234569, relation: "Child", relativeName: "Billy", DoctorRequest: false, RelativeRequest: false)
            ],
            lastVisitDate: Date(),
            appointments: [
                Appointment(
                    
                    appointmentID: 61234567,
                    hospitalID: 11234567,
                    doctorID: 21234567,
                    patientID: 71234567,
                    department: Department(departmentID: 81234567,
                                           departmentName: "Cardiology"),
                    diagnosisRoom: "Exam Room 1",
                    timeSlotStartString: "2:00 PM",
                    timeSlotEndString: "3:00 PM",
                    date: Date(timeIntervalSinceNow: 86400),
                    reports: Report(
                        diagnosisImage: "https://example.com/diagnosis.jpg",
                        diagnosisString: "Common cold",
                        reportID: 51234567,
                        appointmentID: 61234567,
                        reportDate: Date(),
                        medicines: [
                            Medicine(
                                medicineName: "Acetaminophen",
                                medicineID: 31234567,
                                medicinePrice: 199.50,
                                medicineWhen: [
                                    MedicineWhen(
                                        medicineSession: .breakfast,
                                        medicineBOA: .after,
                                        medicineQuantityPerDose: 1
                                    ),
                                    MedicineWhen(
                                        medicineSession: .dinner,
                                        medicineBOA: .before,
                                        medicineQuantityPerDose: 1
                                    )
                                ], medicineDuration: 10 //no. of days
                            )
                        ],
                        labTestsID: [
                            LabTest(labTestID: 41234567, labTestName: "XRayScan", labTestPrice: 2499.00),
                            LabTest(labTestID: 41234568, labTestName: "MRIScan", labTestPrice: 1999.00)
                        ]
                    )
                )
            ]
        ), //Patient 1 details end here
        
        
        PatientProfile(
            firstName: "Emma",
            lastName: "Wilson",
            profilePicture: "https://example.com/profiles/emma-wilson.png",
            patientID: 71234570,
            hospitalID: 11234567,
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
                FamilyMember(userID: 71234571, relation: "Spouse", relativeName: "Peter", DoctorRequest: false, RelativeRequest: false),
                FamilyMember(userID: 71234572, relation: "Child", relativeName: "John", DoctorRequest: false, RelativeRequest: false)
            ],
            lastVisitDate: DateComponents(year: 2022, month: 3, day: 1).date!,
            appointments: [
                Appointment(
                    appointmentID: 61234568,
                    hospitalID: 11234567,
                    doctorID: 21234568,
                    patientID: 71234570,
                    department: Department(departmentID: 81234568, departmentName: "Neurology"),
                    diagnosisRoom: "Room 3",
                    timeSlotStartString: "09:00 AM",
                    timeSlotEndString: "10:00 AM",
                    date: DateComponents(year: 2022, month: 3, day: 1).date!,
                    reports: Report(
                        diagnosisImage: nil,
                        diagnosisString: "Common cold",
                        reportID: 51234568,
                        appointmentID: 61234568,
                        reportDate: DateComponents(year: 2022, month: 3, day: 1).date!,
                        medicines: [
                            Medicine(
                                medicineName: "Ibuprofen",
                                medicineID: 312345678,
                                medicinePrice: 235.50,
                                medicineWhen: [
                                    MedicineWhen(
                                        medicineSession: .breakfast,
                                        medicineBOA: .after,
                                        medicineQuantityPerDose: 1
                                    ),
                                    MedicineWhen(
                                        medicineSession: .lunch,
                                        medicineBOA: .before,
                                        medicineQuantityPerDose: 2
                                    ),
                                    MedicineWhen(
                                        medicineSession: .dinner,
                                        medicineBOA: .before,
                                        medicineQuantityPerDose: 2
                                    )
                                ], medicineDuration: 10 //no. of days
                            )
                        ],
                        labTestsID: nil
                    )
                )
            ]
        ), //Patient 2 details end here
        
        
        
        PatientProfile(
                firstName: "John",
                lastName: "Doe",
                profilePicture: "https://example.com/johndoe.jpg",
                patientID: 71234573,
                hospitalID: 11234567,
                age: 40,
                bloodGroup: .Op,
                dateOfBirth: Date(timeIntervalSince1970: 365*24*60*60*40),
                height: 180,
                weight: 80,
                bodyMassIndex: 24,
                phoneNumber: "+91 9123456788",
                residentialAddressLine1: "123 Main St.",
                residentialAddressLine2: "",
                residentialAddressLine3: "New Delhi 110001",
                familyMembers: [
                    FamilyMember(userID: 71234574, relation: "Spouse", relativeName: "Jane", DoctorRequest: false,RelativeRequest: false),
                    FamilyMember(userID: 71234575, relation: "Child", relativeName: "Billy", DoctorRequest: false,RelativeRequest: false)
                ],
                lastVisitDate: Date(),
                appointments: [
                    Appointment(
                        appointmentID: 61234569,
                        hospitalID: 11234567,
                        doctorID: 21234569,
                        patientID: 71234573,
                        department: Department(departmentID: 81234568, departmentName: "Neurology"),
                        diagnosisRoom: "Exam Room 1",
                        timeSlotStartString: "2:00 PM",
                        timeSlotEndString: "3:00 PM",
                        date: Date(timeIntervalSinceNow: 86400),
                        reports: Report(
                            diagnosisImage: "https://example.com/diagnosis.jpg",
                            diagnosisString: "Common cold",
                            reportID: 51234569,
                            appointmentID: 61234569,
                            reportDate: Date(),
                            medicines: [
                                Medicine(
                                    medicineName: "Acetaminophen",
                                    medicineID: 31234570,
                                    medicinePrice: 329.00,
                                    medicineWhen: [
                                        MedicineWhen(
                                            medicineSession: .breakfast,
                                            medicineBOA: .after,
                                            medicineQuantityPerDose: 1
                                        ),
                                        MedicineWhen(
                                            medicineSession: .dinner,
                                            medicineBOA: .before,
                                            medicineQuantityPerDose: 1
                                        )
                                    ],
                                    medicineDuration: 5
                                )
                            ],
                            labTestsID: [LabTest(labTestID: 41234570, labTestName: "Coagulation Profile", labTestPrice: 3499.99),
                                         LabTest(labTestID: 41234571, labTestName: "Erythrocyte Sedimentation Rate (ESR)", labTestPrice: 2300.00)]
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

        
        doctorID: 21234567,
        hospitalID: 11234567,
        age: 35,
        dateOfBirth: Date(timeIntervalSince1970: 1000000000),
        phoneNumber: "+91 9876543211",
        residentialAddressLine1: "123 Main St",
        residentialAddressLine2: "Apt 4",
        residentialAddressLine3: "New Delhi 110001",
        department: Department(departmentID: 81234567, departmentName: "Cardiology"),
        specialization: ["Interventional Cardiology"],
        yearsOfExperience: 10,
        appointments: [
            Appointment(
                appointmentID: 61234567,
                hospitalID: 11234567,
                doctorID: 21234567,
                patientID: 71234567,
                department: Department(departmentID: 81234567, departmentName: "Cardiology"),
                diagnosisRoom: "Room 101",
                timeSlotStartString: "9:00 AM",
                timeSlotEndString: "10:00 AM",
                date: Date(timeIntervalSince1970: 2000000000),
                reports: Report(
                    diagnosisImage: "https://example.com/diagnosis.jpg",
                    diagnosisString: "Common cold",
                    reportID: 51234567,
                    appointmentID: 61234567,
                    reportDate: Date(),
                    medicines: [
                        Medicine(
                            medicineName: "Acetaminophen",
                            medicineID: 31234567,
                            medicinePrice: 199.50,
                            medicineWhen: [
                                MedicineWhen(
                                    medicineSession: .breakfast,
                                    medicineBOA: .after,
                                    medicineQuantityPerDose: 1
                                ),
                                MedicineWhen(
                                    medicineSession: .dinner,
                                    medicineBOA: .before,
                                    medicineQuantityPerDose: 1
                                )
                            ], medicineDuration: 10 //no. of days
                        )
                    ],
                    labTestsID: [
                        LabTest(labTestID: 41234567, labTestName: "XRayScan", labTestPrice: 2499.00),
                        LabTest(labTestID: 41234568, labTestName: "MRIScan", labTestPrice: 1999.00)
                    ]
                )
            )
        ]
        ),
        // first doctor details end here
    ]
}


