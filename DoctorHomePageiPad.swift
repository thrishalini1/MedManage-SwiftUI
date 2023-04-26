//
//  DoctorHomePageiPad.swift
//  MedManage-SwiftUI
//
//  Created by Naman Alagh on 25/04/23.
//

import SwiftUI
import PencilKit

struct DoctorHomePageiPad: View {
    init(){
        UINavigationBar.appearance().barTintColor = UIColor.systemBackground
    }
    
    var body: some View {
        NavigationView(){
            iPadNavBarContent()
                .navigationTitle("Appointments")
                
            ScrollView {
                //Color(UIColor.systemBackground).ignoresSafeArea()
                LazyVStack(pinnedViews: .sectionHeaders){
                    Section{
                        Text("")
                        .toolbar{
                            ToolbarItem(placement: .navigationBarLeading){
                                iPadUserDetails()
                            }
                        }
                    }
                    Section(){
                        AppointmentDetailCard()
                            //.padding(.top,-10)
                        
                        SegmentedControls()
                    }
                }
            }
        }
    }
}

struct SegmentedControls: View {
    
    init() {
        //UISegmentedControl.appearance().selectedSegmentTintColor = .blue
        //UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
        UISegmentedControl.appearance().backgroundColor = .white
    }
    
    @State public var num = 0
    
    let mainView = DoctorHomePageiPad()
    
    var body: some View {
        LazyVStack(pinnedViews: .sectionHeaders){
            Section(header:
                        Picker("", selection: $num){
                            Text("Medicines").tag(0)
                            Text("Tests").tag(1)
                            Text("Remarks").tag(2)
                        }
                        .pickerStyle(.segmented)
//                        .background(Color(UIColor.systemBackground))
//                        .cornerRadius(5)
                        //.padding(.leading)
                        //.padding(.trailing)
            ){
                if num == 0 {
                    //display medicine view
                    MedicineView()
                } else if num == 1 {
                    //display tests
                    TestsView()
                } else {
                    //display remarks
                }
//                AppointmentDetailCard()
//                AppointmentDetailCard()
//                AppointmentDetailCard()
                
            }
        }
        
    }
}

struct MedicineView: View {
    var body: some View {
        VStack{
            Button("Add Medicine"){
            }
            .frame(width: 600, height: 50)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            .padding(.top)
            
            List (0..<10) { item in
                VStack(alignment: .leading) {
                    Text ("Paracetamol")
                        .foregroundColor(Color(UIColor.label))
                    Text ("1-0-1")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .frame(height: 10*60)
            .listStyle(.plain)
            .scrollDisabled(true)
        }
    }
}

struct TestsView: View {
    var body: some View {
        VStack{
            Button("Add Test"){
            }
            .frame(width: 600, height: 50)
            .foregroundColor(Color(UIColor.white))
            .background(Color.blue)
            .cornerRadius(10)
            .font(.title)
            .fontWeight(.bold)
            .padding(.top)
            
            List (0..<20) { item in
                VStack(alignment: .leading) {
                    Text ("Blood Test")
                        .foregroundColor(Color(UIColor.label))
                    Text ("18-01-2022")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            //60 * no.of items
            .frame(height: 20*60)
            .listStyle(.plain)
            .scrollDisabled(true)
        }
    }
}

struct RemarksView: View {
    var body: some View {
        VStack{
            
        }
    }
}

struct iPadNavBarTableView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(UIColor.systemBackground))
                .frame(height: 90)
                
            HStack{
                Image(systemName: "circle.fill")
                    .font(.title)
                    .padding(.leading)
                
//                    Spacer()
                
                VStack(alignment: .leading){
                    Text("Mrs. Jane Doe")
                        .font(.body)
                        .minimumScaleFactor(0.3)
                        .foregroundColor(.primary)
                    HStack{
                        Text("21")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("|")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Text("Female")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 40)
                        .foregroundColor(.blue)
                    HStack(spacing: 2){
                        Image(systemName: "clock")
                            .foregroundColor(.white)
                        
                        Text("01:00 PM")
                            .foregroundColor(.white)
                            .font(.caption)
                    }
                }
                .padding(.trailing)
            }
        }
    }
}

struct iPadNavBarContent: View{
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                Divider()
                ForEach(0..<20) {index in
                    //iPadAppointmentCard()
                    iPadNavBarTableView()
                    Divider()
                }
            }
        }
    }
}

struct iPadUserDetails: View {
    var body: some View {
        HStack(spacing: 40){
            Text("Dr. Barry Allen")
                .font(.title)
                .fontWeight(.heavy)
                .frame(width: 250)
                .foregroundColor(.blue)
            
            Text("Urologist")
                .font(.title3)
            
            //Spacer()
                        
            Text("Patient Visits for Day: 30")
                .foregroundColor(Color(UIColor.systemBackground))
                .padding(.leading)
                .padding(.trailing)
                .frame(width: 300, height: 40)
                .background(Color.blue)
                .cornerRadius(10)
                .fontWeight(.bold)
                .font(.title2)
                .minimumScaleFactor(0.7)
        }
        //Spacer()
    }
}

struct iPadAppointmentCard: View {
    var body: some View {
        HStack{
            Spacer()
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 10)
                    .frame(height:75)
                    .foregroundColor(Color.blue)
                    .shadow(radius: 5, y: 5)
                    .padding(.leading,14.8)
                    .padding(.trailing,14.8)
                
                RoundedRectangle(cornerRadius: 9)
                    .fill(
                        Color(UIColor.systemBackground)
                    )
                    .frame(height:73)
                    .padding(.leading)
                    .padding(.trailing)
                    
                    
                HStack{
                    Image(systemName: "circle.fill")
                        .font(.title)
                        .padding(.leading,30)
                    
//                    Spacer()
                    
                    VStack(alignment: .leading){
                        Text("Mrs. Jane Doe")
                            .font(.body)
                            .minimumScaleFactor(0.3)
                            .foregroundColor(.primary)
                        HStack{
                            Text("21")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            Text("|")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            
                            Text("Female")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    Spacer()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 80, height: 40)
                            .foregroundColor(.blue)
                        HStack(spacing: 2){
                            Image(systemName: "clock")
                                .foregroundColor(.white)
                            
                            Text("01:00 PM")
                                .foregroundColor(.white)
                                .font(.caption)
                        }
                    }
                    .padding(.trailing,20)
                }
            }
            Spacer()
        }

    }
}

struct AppointmentDetailCard: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 250)
                .padding(.leading)
                .padding(.trailing)
                .shadow(radius: 10, y: 10)
            
            HStack(alignment: .center){
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        Text("Mr. John Johnson")
                            .foregroundColor(Color(UIColor.systemBackground))
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("UHID: 94ADGPF13093DKQRN")
                            .foregroundColor(Color(UIColor.systemBackground))
                            .font(.callout)
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.gray.opacity(0.3))
                                .frame(height: 140)
                                .padding(.trailing, 20)
                            
                            
                            HStack(alignment: .top, spacing:150){
                                VStack(alignment: .leading, spacing: 5){
                                    HStack{
                                        Text("Age:")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                            .fontWeight(.bold)

                                        Text("21 Years")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                    }
                                    
                                    HStack{
                                        Text("Gender:")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                            .fontWeight(.bold)

                                        Text("Male")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                    }
                                    
                                    HStack{
                                        Text("Weight:")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                            .fontWeight(.bold)
                                        
                                        Text("69 kg")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                    }
                                    
                                    HStack{
                                        Text("Height:")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                            .fontWeight(.bold)
                                        
                                        Text("180 cm")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                    }
                                }
                                
                                VStack(alignment: .leading, spacing: 5){
                                    HStack{
                                        Text("Date of Birth:")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                            .fontWeight(.bold)

                                        Text("19-04-2003")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                    }
                                    
                                    HStack{
                                        Text("Blood Group:")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                            .fontWeight(.bold)

                                        Text("B+ve")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                    }
                                    
                                    HStack{
                                        Text("Last Visit:")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                            .fontWeight(.bold)
                                        
                                        Text("08-11-2022")
                                            .foregroundColor(Color(UIColor.systemBackground))
                                    }
                                }
                                
                            }
                        }
                    }
                    .padding(.leading)
                }
                .padding(.leading, 20)
                
                Spacer()
                
                VStack(alignment:.leading, spacing:30){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 75)
                            .foregroundColor(Color.gray.opacity(0.3))
                        
                        HStack{
                            Image(systemName: "calendar.circle")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .font(.largeTitle)
                            
                            Text("Friday, 19 April")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .fontWeight(.bold)
                            
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 200, height: 75)
                            .foregroundColor(Color.gray.opacity(0.3))
                        
                        HStack{
                            Image(systemName: "clock")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .font(.largeTitle)
                            
                            Text("10:30 AM")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .fontWeight(.bold)
                                .frame(width: 120)
                        }
                    }
                }
                .padding(.trailing, 40)
                
            }
        }
    }
}

struct DoctorHomePageiPad_Previews: PreviewProvider {
    static var previews: some View {
        DoctorHomePageiPad()
    }
}
