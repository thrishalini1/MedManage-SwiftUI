//
//  AppointmentsModel.swift
//  MedManage
//
//  Created by Thrishalini on 20/04/23.
//

import Foundation

struct Appointment{
    var appointmentID : UInt
    var hospitalID :UInt
    var doctorID : UInt
    var patientID : UInt
    var department : Department
//    var doctorDept : String
//    var doctorExperience : String
    var diagnosisRoom : String
    var timeSlotStartString : String
    var timeSlotEndString : String
    var date : Date
    var reports : Report?
    
}

struct Report {
    var diagnosisImage : String?
    var diagnosisString : String?
//    var reportName: String
    var reportID: UInt
    var appointmentID: UInt
    var reportDate: Date?
    var medicines: [Medicine]?
    var labTestsID: [LabTest]?
    
}
struct LabTest{
    var labTestID : UInt
    var labTestName: String
    var labTestPrice : UInt
}
struct Medicine {
    var medicineName: String
    var medicineID: UInt
    var medicinePrice: String?
    var medicineWhen: [MedicineWhen]
//    var medicineDosePerDay: Int
//    var medicine: Int
}

struct MedicineWhen{
    var medicineSession : MedicineSession
//    To be Taken at what time - description : before lunch , after lunch
    var medicineBOA : BOA
    var medicineQuantityPerSession : Double
//    no.of tablets
    
}

enum MedicineSession{
    case breakfast
    case lunch
    case dinner
}

enum BOA{
    case before
    case after
}

struct AppointmentSlotAvailibility{
    var departmentId: String
    var departmentName: String
    var listOfDoctor: [DoctorProfile]
    var my3DArray = Array(repeating: Array(repeating: Array(repeating: 2, count: 31), count: 7), count: 30)
}

//enum LabTestType: String {
//    case cbc = "Complete Blood Count (CBC)"
//    case bmp = "Basic Metabolic Panel (BMP)"
//    case cmp = "Comprehensive Metabolic Panel (CMP)"
//    case lipidPanel = "Lipid Panel"
//    case tsh = "Thyroid Stimulating Hormone (TSH)"
//    case hba1c = "Hemoglobin A1c (HbA1c)"
//    case gtt = "Glucose Tolerance Test (GTT)"
//    case electrolytePanel = "Electrolyte Panel"
//    case lft = "Liver Function Test (LFT)"
//    case kft = "Kidney Function Test (KFT)"
//    case ua = "Urinalysis (UA)"
//    case cs = "Culture and Sensitivity (C&S)"
//    case bloodCultures = "Blood Cultures"
//    case stoolCulture = "Stool Culture"
//    case sputumCulture = "Sputum Culture"
//    case csfAnalysis = "CSF Analysis"
//    case abg = "Arterial Blood Gas (ABG)"
//    case coagulationProfile = "Coagulation Profile"
//    case pt = "Prothrombin Time (PT)"
//    case inr = "International Normalized Ratio (INR)"
//    case ptt = "Partial Thromboplastin Time (PTT)"
//    case dDimer = "D-Dimer"
//    case fibrinogen = "Fibrinogen"
//    case troponin = "Troponin"
//    case bnp = "Brain Natriuretic Peptide (BNP)"
//    case ck = "Creatine Kinase (CK)"
//    case crp = "C-Reactive Protein (CRP)"
//    case esr = "Erythrocyte Sedimentation Rate (ESR)"
//    case rf = "Rheumatoid Factor (RF)"
//    case ana = "Antinuclear Antibody (ANA)"
//    case hivTest = "Human Immunodeficiency Virus (HIV) Test"
//    case hepatitisTest = "Hepatitis A, B, and C Tests"
//    case syphilisTest = "Syphilis Test"
//    case tbTest = "Tuberculosis (TB) Test"
//    case ebvTest = "Epstein-Barr Virus (EBV) Test"
//    case cmvTest = "Cytomegalovirus (CMV) Test"
//    case hsvTest = "Herpes Simplex Virus (HSV) Test"
//    case influenzaTest = "Influenza Test"
//    case streptococcusTest = "Streptococcus Test"
//    case legionellaTest = "Legionella Test"
//    case chlamydiaTest = "Chlamydia Test"
//    case gonorrheaTest = "Gonorrhea Test"
//    case papSmear = "Pap Smear"
//    case hpvTest = "HPV Test"
//    case breastCancerGeneticTest = "Breast Cancer Genetic Testing"
//    case colorectalCancerGeneticTest = "Colorectal Cancer Genetic Testing"
//    case pancreaticCancerGeneticTest = "Pancreatic Cancer Genetic Testing"
//    case ovarianCancerGeneticTest = "Ovarian Cancer Genetic Testing"
//    case endometrialCancerGeneticTest = "Endometrial Cancer Genetic Testing"
//    case nipt = "Non-Invasive Prenatal Testing (NIPT)"
//    case prenatalGeneticTest = "Prenatal Genetic Testing"
//
//    }
//
//enum LabTest {
//    case XRayScan
//    case MRIScan
//    case BloodTest
//    case StoolTest
//    case SalivaTest
//    case EyeTest
//
//}

//enum HospitalDepartment {
//    case emergency
//    case cardiology
//    case oncology
//    case obstetricsAndGynecology
//    case pediatrics
//    case neurology
//    case radiology
//    case surgery
//    case orthopedics
//    case dermatology
//    case psychiatry
//    case internalMedicine
//    case intensiveCareUnit
//    case rehabilitation
//    case respiratoryTherapy
//    case nutritionAndDietetics
//    case laboratory
//    case pharmacy
//    case administration
//}

//enum HospitalDepartment: String {
//    case emergencyRoom = "Emergency Room (ER)"
//    case cardiology = "Cardiology"
//    case oncology = "Oncology"
//    case neurology = "Neurology"
//    case gastroenterology = "Gastroenterology"
//    case orthopedics = "Orthopedics"
//    case obstetricsAndGynecology = "Obstetrics and Gynecology"
//    case pediatrics = "Pediatrics"
//    case intensiveCareUnit = "Intensive Care Unit (ICU)"
//    case radiology = "Radiology"
//    case dermatology = "Dermatology"
//    case hematology = "Hematology"
//    case infectiousDisease = "Infectious Disease"
//    case nephrology = "Nephrology"
//    case pulmonology = "Pulmonology"
//    case endocrinology = "Endocrinology"
//    case ophthalmology = "Ophthalmology"
//    case psychiatry = "Psychiatry"
//    case physicalTherapyAndRehabilitation = "Physical Therapy and Rehabilitation"
//    case occupationalTherapy = "Occupational Therapy"
//    case speechTherapy = "Speech Therapy"
//    case anesthesiology = "Anesthesiology"
//    case surgery = "Surgery"
//    case pathology = "Pathology"
//    case nutritionAndDietetics = "Nutrition and Dietetics"
//    case palliativeCare = "Palliative Care"
//    case urology = "Urology"
//    case earNoseAndThroat = "ENT (Ear, Nose, and Throat)"
//    case vascularMedicine = "Vascular Medicine"
//    case rheumatology = "Rheumatology"
//}


//
//let formatter = DateFormatter()
//formatter.dateFormat = "HH:mm"
//var timeSlots:DateFormatter = [formatter.string(from: Date().addingTimeInterval(3600)]

