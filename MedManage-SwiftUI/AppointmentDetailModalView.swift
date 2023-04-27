//
//  AppointmentDetailModalView.swift
//  MedManage
//
//  Created by Naman Alagh on 24/04/23.
//

import SwiftUI

struct AppointmentDetailModalView: View {
    var body: some View {
        VStack{
            HStack{
                Text("May, 12")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Text("10:00 AM")
                    .font(.title2)
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
            }
            .padding(.trailing,10)
            .padding(.leading,10)
            
            BlueLine()
            
            HStack{
                Image(systemName: "circle.fill")
                    .font(.system(size: 120))
                    .foregroundColor(Color.blue.opacity(0.2))
                
                VStack(alignment: .leading){
                    Text("Mr. John Johnson")
                        .font(.title)
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                    
                    HStack{
                        Text("32")
                            .font(.title3)
                            .foregroundColor(.secondary)
                        
                        Text("|")
                            .font(.title3)
                            .foregroundColor(.secondary)
                        
                        Text("Male")
                            .font(.title3)
                            .foregroundColor(.secondary)
                    }
                }
                Spacer()
            }
            
            HStack{
                Text("Description:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading,10)
                Text("Explosive Diarrhea")
                    .font(.title2)
                Spacer()
            }
            .padding(.top,1)
            
            
            HStack{
                Text("Designated Room:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading,10)
                Text("B-293")
                    .font(.title2)
                Spacer()
            }
            .padding(.top,1)
            
            HStack{
                Text("Time Slot:")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading,10)
                Text("10:00-10:15 AM")
                    .font(.title2)
                Spacer()
            }
            .padding(.top,1)
            
            Button("Patient Details"){
            }
            .frame(width: 140, height: 50)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(10)
            .font(.title3)
            .padding(.top)
            
            Spacer()
        }
        .padding(.top)
    }
}

struct AppointmentDetailModalView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentDetailModalView()
    }
}
