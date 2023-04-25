//
//  SpecialtiesView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 25/04/23.
//

import SwiftUI

struct SpecialtiesView: View {
    @State private var searchText = ""
    @State var department = "Cardiologist"
    let departments = ["Cardiologist","Dentist","Orthopedic","Pediatrist","Psychiatrist","Surgeon","Urologist","Radiologist"]
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            VStack{
                VStack{

                LazyVGrid(columns: columns) {
                    ForEach(searchResults, id: \.self){ depart in
                        VStack{

                            Image(depart)
                                .resizable()
                                .frame(height: 100)
                                .blur(radius: 2)
                                .cornerRadius(10)
                                .brightness(-0.3)
                                .opacity(1)
                                .overlay {
                                    Text(depart)
                                        .foregroundColor(.white)
                                        .fontWeight(.bold)
                                }
                                .padding(.top)
                                .padding(.trailing)
                                .shadow(radius: 3,x: 0,y: 5)
                                .shadow(color: Color.black.opacity(0.4), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        }
                    }
                }
                .padding(20)
                    Spacer()
                }
            }.navigationTitle(Text("Specialities"))
                .searchable(text: $searchText)
        }
    }
    var searchResults: [String] {
            if searchText.isEmpty {
                return departments
            } else {
                return departments.filter { $0.contains(searchText) }
            }
        }
}

struct SpecialtiesView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialtiesView()
    }
}
