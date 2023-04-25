//
//  PatientRegistrationForm.swift
//  MedManage
//
//  Created by Aryaman Shrivastava on 24/04/23.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

struct PatientRegistrationForm: View {
    let currentDate = Date()
    enum FocusedField{
        case fName, lName, email, pNumber, age, gender, birthDate, bloodGroup, reasonReg, historyM
    }
    @State private var fName = ""
    @State private var lName = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var age = ""
    @State private var gender = "Male"
    @State private var birthDate = Date.now
    @State private var bloodGroup = ""
    @State private var reasonReg = ""
    @State private var historyM = ""
    
    let genderOptions = ["Male", "Female", "Other"]
    @FocusState private var fieldFocus: FocusedField?
    
    var body: some View {
        Form{
            // Current Date and Time of form filled
//            Text("\(currentDate)")
//                .disabled(true)
            Section("Name"){
                TextField("First Name", text: $fName)
                    .focused($fieldFocus, equals: .fName)
                    .textContentType(.givenName)
                    .keyboardType(.namePhonePad)
                    .submitLabel(.next)
                TextField("Last Name", text: $lName)
                    .focused($fieldFocus, equals: .lName)
                    .textContentType(.familyName)
                    .keyboardType(.namePhonePad)
            }
            Section("Contact Details"){
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .focused($fieldFocus, equals: .email)
                    .textContentType(.emailAddress)
                    .submitLabel(.next)
                
                TextField("Phone Number", text: $phoneNumber)
                    .keyboardType(.numberPad)
                    .focused($fieldFocus, equals: .pNumber)
                    .textContentType(.telephoneNumber)
            }
            Section("Personal Details"){
                TextField("Age", text: $age)
                    .keyboardType(.numberPad)
                    .focused($fieldFocus, equals: .age)
                    .textContentType(.dateTime)
                    .submitLabel(.next)
                TextField("Blood Group", text: $bloodGroup)
                    .keyboardType(.numberPad)
                    .focused($fieldFocus, equals: .bloodGroup)
                    .textContentType(.givenName)
                    .submitLabel(.next)
                Picker("Gender", selection: $gender) {
                    ForEach(genderOptions, id: \.self) {
                        Text($0)
                    }
                }
                DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                    Text("Date of Birth")
                }
            }
            Section("Medical History"){
                TextField("Reason for Registration", text: $reasonReg)
                    .keyboardType(.default)
                    .focused($fieldFocus, equals: .reasonReg)
                    .textContentType(.name)
                    .submitLabel(.next)
                
                TextField("History of Medication", text: $historyM)
                    .keyboardType(.numberPad)
                    .focused($fieldFocus, equals: .historyM)
                    .textContentType(.telephoneNumber)
            }
            Button(action: {
                register(fName: fName, lName: lName, email: email, pNumber: phoneNumber, age: age, gender: gender, birthDate: birthDate, bloodGroup: bloodGroup, reasonReg: reasonReg, historyM: historyM)
            }, label: {
                Text("Register")
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        } // Form
        .onSubmit {
            switchField(currentField: fieldFocus ?? .fName)
        }
        .navigationBarTitle("Registration Form", displayMode: .inline)
    } //body
    
    func register(fName: String, lName: String, email: String, pNumber: String, age: String, gender: String, birthDate: Date, bloodGroup: String, reasonReg: String, historyM: String) {
        // Register the user with Firebase Authentication
        Auth.auth().createUser(withEmail: email, password: pNumber) { (result, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            // User registration was successful, update their profile with additional data
            let changeRequest = result?.user.createProfileChangeRequest()
            changeRequest?.displayName = "\(fName) \(lName)"
            changeRequest?.commitChanges(completion: { (error) in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                // Update the user's profile with additional data
                let db = Firestore.firestore()
                let userRef = db.collection("users").document(result!.user.uid)
                let userData: [String: Any] = [
                    "fName":fName,
                    "lName":lName,
                    "email":email,
                    "phoneNumber":pNumber,
                    "age": age,
                    "bloodGroup": bloodGroup,
                    "gender": gender,
                    "birthDate": birthDate,
                    "reasonReg": reasonReg,
                    "historyM": historyM
                ]
                userRef.setData(userData, merge: true) { error in
                    if let error = error {
                        print(error.localizedDescription)
                        return
                    }
                    print("User registered successfully")
                }
            })
        }
    }

    func switchField(currentField: FocusedField){
        switch currentField {
        case .fName:
            fieldFocus = .lName
        case .lName:
            fieldFocus = .email
        case .email:
            fieldFocus = .pNumber
        case .pNumber:
            fieldFocus = .age
        case .age:
            fieldFocus = .bloodGroup
        case .bloodGroup:
            fieldFocus = .gender
        case .gender:
            fieldFocus = .birthDate
        case .birthDate:
            fieldFocus = .reasonReg
        case .reasonReg:
            fieldFocus = .historyM
        case .historyM:
            fieldFocus = .fName
        }
    }
    
    func switchFieldRev(currentField: FocusedField){
        switch currentField {
        case .fName:
            fieldFocus = .historyM
        case .lName:
            fieldFocus = .fName
        case .email:
            fieldFocus = .lName
        case .pNumber:
            fieldFocus = .email
        case .age:
            fieldFocus = .pNumber
        case .gender:
            fieldFocus = .bloodGroup
        case .birthDate:
            fieldFocus = .gender
        case .bloodGroup:
            fieldFocus = .age
        case .reasonReg:
            fieldFocus = .birthDate
        case .historyM:
            fieldFocus = .reasonReg
        }
    }
  
}

struct PatientRegistrationForm_Previews: PreviewProvider {
    static var previews: some View {
        PatientRegistrationForm()
    }
}
