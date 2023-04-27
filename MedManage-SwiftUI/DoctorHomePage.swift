//
//  DoctorHomePage.swift
//  MedManage
//
//  Created by Naman Alagh on 24/04/23.
//

import SwiftUI


struct DoctorHomePage: View {
    
    @State var showModalView = false
    
    var body: some View {
        TabView{
            NavigationView{
                PageContent()
//                    .toolbar{
//                        ToolbarItem(placement: .navigationBarLeading){
//                            UserDetails()
//                        }
//                    }
            }
            .tabItem {
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

struct BlueLine: View {
    var body: some View{
        Divider()
            .background(Color.blue.opacity(0.5))
            .padding(.leading, 10)
            .padding(.trailing, 10)
    }
}

struct PageContent: View {
    var body: some View{
        
        VStack(alignment: .leading){
            
            UserDetails()
                .padding(.leading,10)
                .padding(.bottom, 10)
            
            ScrollView(showsIndicators: false){
                HStack{
                    Text("Upcoming")
                        .padding(.leading,10)
                        .font(.title2)
                        .foregroundColor(.primary)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                
                BlueLine()
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 0){
                        ForEach(0..<5) {index in
                            UpcomingCard()
                                .padding(.leading,10)
                        }
                        .padding(.top, -25)
                        .frame(height: 275)
                    }
                    .padding(.trailing, 10)
                }
                
                HStack{
                    Text("Later this day")
                        .padding(.leading)
                        .font(.title2)
                        .foregroundColor(.primary)
                        .fontWeight(.bold)
                    Spacer()
                    Button("View All"){
                        print("View All")
                    }
                    .padding(.trailing)
                    .foregroundColor(.secondary)
                }
                
                
                BlueLine()

                VStack(alignment: .center){
                    ForEach(0..<5){index in
                        LaterThisDayCard()
                    }
                }
            }
        }
    }
}

struct UpcomingCard: View {
    @State var showModalView: Bool = false
    
    var body: some View{
        
        Button(action: {
            self.showModalView.toggle()
        }) {
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 250, height: 250)
                    .shadow(radius: 5, x:0, y: 5)
                    .foregroundColor(.primary)
                
                VStack(alignment: .leading){
                    Text("Mr. John Johnson")
                        .frame(width: 150, alignment: .leading)
                        .foregroundColor(Color(UIColor.systemBackground))
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(
                                Color(UIColor.systemBackground).opacity(0.3)
                            )
                            .frame(width: 200, height: 50)
                            
                            
                        
                        HStack{
                            Image(systemName: "list.clipboard")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .font(.title)
                            
                            Text("Explosive Diarrhea")
                                .frame(width: 150,height: 40)
                                .foregroundColor(Color(UIColor.systemBackground))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                        }
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(
                                Color(UIColor.systemBackground).opacity(0.3)
                            )
                            .frame(width: 200, height: 50)
                        
                        HStack{
                            Image(systemName: "clock")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .font(.title)
                            
                            Text("10:30 AM")
                                .foregroundColor(Color(UIColor.systemBackground))
                                .frame(width: 150)
                                .fontWeight(.bold)
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $showModalView, content: {
                AppointmentDetailModalView()
                .presentationDetents([.fraction(0.7)])
        })
        
    }
}

struct LaterThisDayCard: View {
    var body: some View {
        HStack{
            Spacer()
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 350, height:75)
                    .foregroundColor(Color.blue)
                    .shadow(radius: 5, y: 5)
                RoundedRectangle(cornerRadius: 9)
                    .fill(
                        Color(UIColor.systemBackground)
                    )
                    .frame(width: 347, height:73)
                    
                    
                HStack{
                    Image(systemName: "circle.fill")
                        .font(.title)
                    
                    Spacer()
                    
                    VStack(alignment: .leading){
                        Text("Mrs. Jane Doe")
                            .font(.title3)
                            .minimumScaleFactor(0.5)
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
                            .frame(width: 110, height: 40)
                            .foregroundColor(.blue)
                        HStack(spacing: 2){
                            Image(systemName: "clock")
                                .foregroundColor(.white)
                            
                            Text("01:00 PM")
                                .foregroundColor(.white)
                        }
                    }
                }
                .frame(width: 300)
            }
            Spacer()
        }
    }
}

struct UserDetails: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .font(.largeTitle)
            
            
            VStack(alignment: .leading){
                Text("Welcome,")
                    .font(.callout)
                
                Text("Dr. Barry Allen")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                    .padding(.top,-20)
                
            }
        }

    }
}

struct DoctorHomePage_Previews: PreviewProvider {
    static var previews: some View {
        DoctorHomePage()
    }
}
