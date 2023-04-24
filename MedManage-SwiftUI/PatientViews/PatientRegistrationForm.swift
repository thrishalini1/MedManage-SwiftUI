//
//  PatientRegistrationForm.swift
//  MedManage
//
//  Created by Aryaman Shrivastava on 24/04/23.
//

import SwiftUI

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
                TextField("Reason for Registration", text: $email)
                    .keyboardType(.emailAddress)
                    .focused($fieldFocus, equals: .email)
                    .textContentType(.emailAddress)
                    .submitLabel(.next)
                
                TextField("History of Medication", text: $phoneNumber)
                    .keyboardType(.numberPad)
                    .focused($fieldFocus, equals: .pNumber)
                    .textContentType(.telephoneNumber)
            }
            Button(action: {
                print("\(currentDate)")
                print("\(fName)")
                print("\(lName)")
                print("\(email)")
                print("\(phoneNumber)")
                print("\(age)")
                print("\(gender)")
                print("\(birthDate)")
                print("\(bloodGroup)")
            }, label: {
                Text("Register")
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .tint(.green)
        } // Form
        .onSubmit {
            switchField(currentField: fieldFocus ?? .fName)
        }
        .navigationBarTitle("Registration Form", displayMode: .inline)
    } //body
    
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
            fieldFocus = .gender
        case .gender:
            fieldFocus = .birthDate
        case .birthDate:
            fieldFocus = .bloodGroup
        case .bloodGroup:
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
            fieldFocus = .age
        case .lName:
            fieldFocus = .fName
        case .email:
            fieldFocus = .lName
        case .pNumber:
            fieldFocus = .email
        case .age:
            fieldFocus = .pNumber
        case .gender:
            fieldFocus = .age
        case .birthDate:
            fieldFocus = .gender
        case .bloodGroup:
            fieldFocus = .birthDate
        case .reasonReg:
            fieldFocus = .reasonReg
        case .historyM:
            fieldFocus = .fName
        }
    }
  
}

struct PatientRegistrationForm_Previews: PreviewProvider {
    static var previews: some View {
        PatientRegistrationForm()
    }
}
