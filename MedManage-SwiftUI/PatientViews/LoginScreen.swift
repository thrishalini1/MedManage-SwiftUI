//
//  LoginScreen.swift
//  MedManage
//
//  Created by Ritu Raj Singh on 21/04/23.
//

import SwiftUI
import FirebaseAuth


struct LoginScreen: View {
    @State var email: String = ""
    @State private var pNumber: String = ""
    @State private var isPasswordHidden = true
    @State private var userIsLogedIn = false
    var body: some View {
        if userIsLogedIn{
            
        }else{
            content
        }
    }
    var content: some View{
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Text("MedManage")
                    .foregroundColor(Color("BlueMain"))
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                
                Image("doctorLoginScreen")
                    .resizable()
                    .frame(height: 350)
                HStack {
                    Text("Login")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.leading, 20)
                
                HStack {
                    Text("@")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .padding(.bottom, -15)
                    VStack {
                        TextField("Email", text: $email)
                            .frame(width: 230, height: 50)
                            .padding(.bottom, -20)
                        
                        Divider()
                            .frame(width: 230)
                            .overlay(.black)
                    }
                }
                .padding(.leading, -30)
                .padding(.bottom, 15)
                HStack {
                    Image("passwordLock")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .padding(.bottom, -15)
                    
                    VStack {
                        if isPasswordHidden {
                            SecureField("Password", text: $pNumber)
                                .frame(width: 230, height: 50)
                                .padding(.bottom, -20)
                        } else {
                            TextField("Password", text: $pNumber)
                                .frame(width: 230, height: 50)
                                .padding(.bottom, -20)
                                .submitLabel(.next)
                                
                        }
                        Divider()
                            .frame(width: 230)
                            .overlay(.black)
                    }
                    Button(action: {
                        isPasswordHidden.toggle()
                    }) {
                        Image(systemName: isPasswordHidden ? "eye.slash" : "eye")
                            .foregroundColor(.black)
                    }
                    .buttonStyle(BorderlessButtonStyle()) // to remove the button border
                    
                }.onAppear() {
                    isPasswordHidden = true
                }
                .padding(.bottom, 50)
                //Navigation Link
                Button (action: {
                    login()
                }){
                Text("Log in")
                    .foregroundColor(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 50)
                        
                    }
            }
                
                HStack {
                    Text("New to MedMange?")
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                    NavigationLink(destination: PatientRegistrationForm()){
                        Text("Register")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .underline()
                            .foregroundColor(.blue)
                        
                    }
                }
                .padding(.top,10)
                Spacer()
            }
            .onAppear {
                            Auth.auth().addStateDidChangeListener { auth, user in
                                if user != nil {
                                    userIsLogedIn = true
                                }
                            }
                        }
        }
    }
    func login() {
           Auth.auth().signIn(withEmail: email, password: pNumber) { (result, error) in
               if error != nil {
                   print(error?.localizedDescription ?? "")
               } else {
                   print("login successfully")
               }
           }
       } 
}
struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
