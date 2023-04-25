//
//  PatientHomePage.swift
//  MedManage-SwiftUI
//
//  Created by Naman Alagh on 24/04/23.
//

import SwiftUI

struct PatientHomePage: View {

    
    var body: some View {
        TabView{
            NavigationView{
                PatientHomePageContent()
                    .navigationBarTitle("Home")
            }
            .tabItem{
                Label("Home", systemImage: "house")
            }
        }
        .onAppear {
            // correct the transparency bug for Tab bars
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            // correct the transparency bug for Navigation bars
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithOpaqueBackground()
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
        }
        
        
    }
}

struct PatientHomePageContent: View {

    var body: some View {
        
        VStack{
            
            OffersCard()
            
            //Upcoming
            HStack{
                Text("Upcoming")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading)
                Spacer()
            }
            
            //Appointment Cards
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10){
                    ForEach(0..<5) {index in
                        UpcomingAppointmentCard()
                    }
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .padding(.top, -25)
                .frame(height: 275)
            }
            
            //Book Appointment Button
            Button("Book an Appointment"){
                
            }
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.title3)
            .cornerRadius(10)
            .fontWeight(.bold)
            
        }
    }
}

struct OffersCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 250)
                .foregroundColor(.gray)
            
            HStack{
                VStack(alignment: .leading, spacing: 120){
                    Text("Get 40% off on your next lab report!")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(width: 300)
                    
                    HStack{
                        Button("Apply Offer"){
                        }
                        .frame(width: 120, height: 30)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .background(Color.black)
                        .cornerRadius(10)
                        .shadow(radius: 5, y: 5)
                        .padding(.leading, 20)
                        
                    }
                    
                    
                    
                }
                
                Spacer()
            }
            
        }
    }
}

struct UpcomingAppointmentCard: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250,height: 250)
                .shadow(radius: 5, y: 5)
            
            VStack(alignment: .leading){
                HStack(spacing: 100){
                    ZStack{
                        Circle()
                            .frame(width: 70)
                            .foregroundColor(Color.gray.opacity(0.2))
                        Image(systemName: "calendar")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    
                    VStack(spacing: -10){
                        Text("April")
                            .font(.body)
                            .foregroundColor(.white)
                        
                        Text("19")
                            .font(.system(size: 48))
                            .foregroundColor(.white)
                            .fontWeight(.heavy)
                    }
                }
                
                VStack(alignment: .leading, spacing: -5){
                    Text("Dr. Ranit Patel")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .frame(width: 150, height: 80)
                        .minimumScaleFactor(0.6)
                    
                    Text("Urologist")
                        .foregroundColor(.white)
                        .padding(.leading,4)
                }
            }
        }
    }
}

struct PatientHomePage_Previews: PreviewProvider {
    static var previews: some View {
        PatientHomePage()
    }
}
