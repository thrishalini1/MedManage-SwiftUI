//
//  LoginScreen.swift
//  MedManage
//
//  Created by Ritu Raj Singh on 21/04/23.
//

import SwiftUI


struct LoginScreen: View {
    
    @State var username: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        NavigationView{
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
                            TextField("Username", text: $username)
                                .frame(width: 230, height: 50)
                                .padding(.bottom, -20)
                            Divider()
                                .frame(width: 230)
                                .overlay(.black)
                            
                        }
                    }
                    //                .padding(.leading, 20)
                    HStack {
                        Image("passwordLock")
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                            .padding(.bottom, -15)
                        VStack{
                            SecureField("Password", text: $password)
                                .frame(width: 230, height: 50)
                                .padding(.bottom, -20)
                            Divider()
                                .frame(width: 230)
                                .overlay(.black)
                        }
                        
                    }
                    //                .padding(.leading)
                    .padding(.bottom, 50)
                    //Navigation Link
                    Button {
                        
                    }
                label: {
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
                    }
                    .padding(.top,50)
                    Spacer()
                }
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
