//
//  BillingView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 25/04/23.
//

import SwiftUI

struct BillingView: View {
    @State private var reports = 0
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
                VStack{
                    VStack{
                        Text("Patient Details")
                            .foregroundColor(.white)
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                            .padding(.top)
                            .padding(.bottom)
                    }
                    .background(Color("ColorSet4"))
                    HStack{
                        VStack{
                            HStack{
                                Text("Aryaman Srivastav")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            HStack{
                                Text("UHID: 94ADGPF13093DKQRN")
                                    .font(.subheadline)
                                Spacer()
                            }
                            Spacer()
                            HStack{
                                VStack{
                                    HStack{
                                        Text("Gender:")
                                            .font(.headline)
                                        Spacer()
                                    }
                                    HStack{
                                        Text("Date of Birth:")
                                            .font(.headline)
                                        Spacer()
                                    }
                                    HStack{
                                        Text("Age:")
                                            .font(.headline)
                                        Spacer()
                                    }
                                    HStack{
                                        Text("Blood Group:")
                                            .font(.headline)
                                        Spacer()
                                    }
                                    HStack{
                                        Text("Last vist:")
                                            .font(.headline)
                                        Spacer()
                                    }
                                }
                                Spacer()
                                VStack{
                                    HStack{
                                        Text("Male")
                                        Spacer()
                                    }
                                    HStack{
                                        Text("08-06-2002")
                                        Spacer()
                                    }
                                    HStack{
                                        Text("21 years")
                                        Spacer()
                                    }
                                    HStack{
                                        Text("B+")
                                        Spacer()
                                    }
                                    HStack{
                                        Text("08-11-022")
                                        Spacer()
                                    }
                                    
                                }



                            }
                                                    }
                        Spacer()
                        Circle()
                            .frame(height: 100)
                            .foregroundColor(.gray)
                    }
                    .frame(width: 350, height: 200)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .padding(.leading,8)
                            .padding(.trailing,8)
                            .shadow(radius: 3)
                    )
                    
                    .padding(.top)
                    Divider()
                        .frame(height: 2)
                        .overlay(Color("ColorSet2"))
                        .padding(.leading)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.trailing)
                        .padding(.top)
                        .padding(.bottom)
                    VStack{
                        Picker("Reports",selection: $reports){
                            Text("Medicines").tag(0)
                            Text("Tests").tag(1)
                            Text("Remarks").tag(2)
                        }
                        .pickerStyle(.segmented)
                        .padding(.leading)
                        .padding(.trailing)
                    }
                    Spacer()
                }
        }
    }
}

struct BillingView_Previews: PreviewProvider {
    static var previews: some View {
        BillingView()
    }
}
