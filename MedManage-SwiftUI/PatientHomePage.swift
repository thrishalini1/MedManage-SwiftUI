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
                    .navigationBarTitle("MedManage")
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
            
            //Offers
            TabView{
                ForEach(0..<5) {index in
                    OffersCard()
                }
            }
            .tabViewStyle(.page)
            .onAppear{
                UIPageControl.appearance().currentPageIndicatorTintColor = .black
                
            }
            
            
            
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
            .padding(.top, -10)
            
            //Book Appointment Button
            Button("Book an Appointment"){
            }
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.title3)
            .cornerRadius(10)
            .fontWeight(.bold)
            .padding(.bottom, 20)
            .shadow(radius: 5, y: 5)
        }
    }
}

struct OffersCard: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 230)
                .foregroundColor(.gray)
            
//            Image(systemName: "house")
//                .frame(height: 230)
            
            HStack{
                VStack(alignment: .leading, spacing: 100){
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
                            .foregroundColor(Color(UIColor.systemBackground))
                            .font(.title)
                    }
                    
                    VStack(spacing: -10){
                        Text("April")
                            .font(.body)
                            .foregroundColor(Color(UIColor.systemBackground))
                        
                        Text("19")
                            .font(.system(size: 48))
                            .foregroundColor(Color(UIColor.systemBackground))
                            .fontWeight(.heavy)
                    }
                }
                
                VStack(alignment: .leading, spacing: -5){
                    Text("Dr. Barry Allen")
                        .font(.largeTitle)
                        .foregroundColor(Color(UIColor.systemBackground))
                        .fontWeight(.heavy)
                        .frame(width: 150, height: 80)
                        .minimumScaleFactor(0.6)
                    
                    Text("Urologist")
                        .foregroundColor(Color(UIColor.systemBackground))
                        .padding(.leading,5)
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

