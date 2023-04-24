//
//  OnboardingPageModel.swift
//  MedManage
//
//  Created by Ritu Raj Singh on 24/04/23.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample page", imageUrl: "onbimg1", tag: 0)
    
    static var onboardingPages: [Page] = [
        Page(name: "Schedule Appointments with Ease", description: "Effortlessly book appointments with just a few clicks", imageUrl: "onbimg1", tag: 0),
        Page(name: "No more waiting in Queues", description: "Pay for you meds online and collect them directly", imageUrl: "onbimg2", tag: 1),
        Page(name: "Forget the Paperwork", description: "Get a digital copy for your prescriptions and reports", imageUrl: "onbimg3", tag: 2)
    ]
}
