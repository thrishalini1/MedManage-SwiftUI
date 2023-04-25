//
//  MedManage_SwiftUIApp.swift
//  MedManage-SwiftUI
//
//  Created by Ritu Raj Singh on 24/04/23.
//

import SwiftUI
import FirebaseCore

@main
struct MedManage_SwiftUIApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            OnboardingScreen()
        }
    }
}
