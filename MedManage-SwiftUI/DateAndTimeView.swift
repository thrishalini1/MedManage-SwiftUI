//
//  DateAndTimeView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 25/04/23.
//

import SwiftUI

struct DateAndTimeView: View {
    @State var dateNtime = Date.now
    @State private var time = 0
    @State var selectedButton : Int = -1
    let columns: [GridItem] = [
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil)
    ]

    
    var body: some View {
        NavigationView {
            ZStack{
                Color(UIColor.systemBackground).ignoresSafeArea()
                VStack{
                    HStack
                    {
                        Text("Date And Time")
                            .foregroundColor(.primary)
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity,  alignment: .leading)
                            .padding(.leading)
                            .padding(.top)
                    }
                    
                    Text("Select a date")
                        .foregroundColor(.primary)
                        .padding(.top)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    Divider()
                        .frame(height: 2)
                        .overlay(Color("ColorSet2"))
                        .padding(.leading)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.trailing)
                        .padding(.bottom,5)
                    
                    HStack{
                        DatePicker("", selection: $dateNtime, displayedComponents: [.date])
                            .labelsHidden()
                    }
                    Text("Select a time")
                        .foregroundColor(.primary)
                        .padding(.top,30)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    
                    Divider()
                        .frame(height: 2)
                        .overlay(Color("ColorSet2"))
                        .padding(.leading)
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.trailing)
                        .padding(.bottom,10)
                    
                    VStack{
                        Picker("Timing",selection: $time){
                            Text("Morning").tag(0)
                            Text("Afternoon").tag(1)
                            Text("Evening").tag(2)
                        }
                        .pickerStyle(.segmented)
                        .padding(.leading)
                        .padding(.trailing)
                    }
                    
                    if (time == 1){
                        afternoonView()
                    }
                    else if (time == 0){
                        morningView()
                    }
                    else if (time == 2){
                        eveningView()
                    }
                    
                    
                    Text("Please arrive at the designated location within the time slot selected.\n\nMissing an appointment may result in a no-show fee being charged to your account")
                        .multilineTextAlignment(.center)
                        .padding(.top)
                        .padding()
                        .padding()
                        .foregroundColor(.secondary)
                        .frame(alignment: .center)
                    
                    Button{
                        
                    }
                label: {
                    NavigationLink(destination: ContentView()){
                        Text("Confirm Booking")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .background{
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(Color(.blue))
                                    .frame(width: 350, height: 50)
                                    .shadow(radius: 3, x: 2, y: 5)
                            }
                    }
                    }
                .padding(.bottom,20)
                    }
            }
        }
        }
    }

struct DateAndTimeView_Previews: PreviewProvider {
    static var previews: some View {
        DateAndTimeView()
    }
}
