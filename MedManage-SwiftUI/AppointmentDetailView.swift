//
//  AppointmentDetailView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 25/04/23.
//

import SwiftUI

struct AppointmentDetailView: View {
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack{
                HStack{
                    Text("April,21")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity,  alignment: .leading)
                        .padding(.leading)
                    Text("5:00 pm")
                        .font(.system(size: 25))
                        .foregroundColor(Color("ColorSet1"))
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity, alignment: .trailing)
                        .padding(.trailing)
                }
                Divider()
                    .frame(height: 2)
                    .overlay(Color("ColorSet2"))
                    .padding(.leading)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.trailing)
                
                HStack{
                    Circle()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .foregroundColor(Color("ColorSet1"))
                        .padding(.leading)
                        .padding(.leading)
                    VStack{
                        HStack{
                            Text("Dr. Ranjit Patel")
                                .foregroundColor(Color("ColorSet1"))
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                            Spacer()
                        }
                        HStack{
                            Text("Urologist")
                            Spacer()
                        }
                        HStack{
                            Text("15+ Years")
                            Spacer()
                        }
                    }
                    .padding(.leading)
                    .padding(.leading)
                }
                .padding(.bottom)
                .padding(.bottom)
                HStack{
                    Text("Designated Room: ")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Text("B-293")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.leading)
                .padding(.leading)
                
                HStack{
                    Text("Time Slot: ")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Text("5:00-6:00 PM")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.leading)
                .padding(.leading)
                .padding(.bottom)
                
                Text("Please arrive at the designated location within the time slot selected.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding()
                    .foregroundColor(.gray)
                Spacer()
                
            }
        }
    }
}

struct AppointmentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentDetailView()
    }
}
