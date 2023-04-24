//
//  OnboardingScreen.swift
//  MedManage
//
//  Created by Ritu Raj Singh on 24/04/23.
//

import SwiftUI

struct OnboardingScreen: View {
    var onboardngPages: [Page] = Page.onboardingPages
    @State private var currentStep = 0
    
    private let dotAppearance = UIPageControl.appearance()
    var body: some View {
        NavigationView {
            VStack() {
                Text("MedManage")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(Color("BlueMain"))
                
                TabView(selection: $currentStep) {
                    ForEach(onboardngPages) { Page in
                        VStack{
                            Text(Page.name)
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                            Text(Page.description)
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color("BlueMain"))
                                .padding(10)
                                .padding(.leading, 55)
                                .padding(.trailing, 55)
                                .multilineTextAlignment(.center)
                            
                            Image(Page.imageUrl)
                                .resizable()
                                .frame(width: 400, height: 400)
                        }
                        .tag(Page.tag)
                    }
                }
                .animation(.easeInOut, value: currentStep)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                .onAppear() {
                    dotAppearance.currentPageIndicatorTintColor = .blue
                    dotAppearance.pageIndicatorTintColor = UIColor(Color("TintColor"))
                }
                
                
                if currentStep != onboardngPages.count - 1 {
                    Button(action: increamentPage,
                           label: {
                        Text("Continue")
                            .frame(width: 200)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.system(size: 18))
                        
                    })
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .accentColor(Color("BlueMain"))
                    Spacer()
                    
                } else {
                    // GO TO LOGIN SCREEN
                        Button{
                            print("working")
                        }
                        label: {
                            NavigationLink(
                            destination: LoginScreen()){
                                Text("Get Started")
                                    .frame(width: 200)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 18))
                            }
                            
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        .accentColor(Color("BlueMain"))
                        Spacer()
                } // else block
                
                Spacer()
                
            } // VStack
        } // navigationView
        .navigationBarHidden(true)
        
    } // body
        
    
    
    func increamentPage() {
        currentStep += 1
    }
    
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
