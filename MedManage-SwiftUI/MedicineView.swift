//
//  MedicineView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 25/04/23.
//

import SwiftUI

struct TimeDetails {
    var title: String
    var beforeFood: Bool
    var afterFood: Bool
    var isIncluded: Bool
}

struct MedicineView: View {
    @State var days: Double = 30
    @State var selected1: Int = -1
    @State var selected2: Int = -1
    @State var selected3: Int = -1
    @State var value1 = ""
    @State var value2 = ""
    @State var value3 = ""
    var placeholder = "Dose"
    var dropDownList = ["1/2", "1", "2"]
    @State private var dose = "Half"
    let doses = ["1/2","1","2"]
    let times = ["Morning","Afternoon","Evening"]
    let when = ["Before Meal","After Meal"]
    @State var selectedButton : Int = 0
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack{
                MedicineDetailView()
                DaysView()
                Group{
                    Text("Frequency")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,50)
                    morningOptionView()
                    
                    HStack{
                      
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.black)
                            .frame(width: 130, height: 50)
                            .overlay {
                                Text("Afternoon")
                                    .foregroundColor(.white)
                            }
                        Spacer()
                        ForEach(0..<when.count){i in
                            HStack{
                                Button{
                                    selected2 = i
                                }label: {
                                    Circle()
                                        .frame(width: 20)
                                        .foregroundColor(selected2 == i ? .blue : .secondary)
                                        .overlay {
                                            if(selected2 == i){
                                                Circle()
                                                    .frame(width: 10)
                                                    .foregroundColor(.white)
                                            }
                                            
                                        }
                                    Text("\(when[i])")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                }
                            }
                            .padding(.leading,60)
                        }
                        Menu {
                            ForEach(dropDownList, id: \.self){ client in
                                Button(client) {
                                    self.value2 = client
                                }
                            }
                        } label: {
                            VStack(spacing: 5){
                                HStack{
                                    Text(value2.isEmpty ? placeholder : value2)
                                        .foregroundColor(value2.isEmpty ? .gray : .black)
                                    Spacer()
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.black)
                                        .font(Font.system(size: 20, weight: .bold))
                                }
                                .padding(.leading)
                                .padding(.horizontal)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .strokeBorder(.black,lineWidth: 4)
                                        .frame(width: 100, height: 50)
                                )
                            }
                            .frame(width: 120, height: 50)
                        }
                        .padding(.leading,40)

                    }
                    .padding(.trailing,150)
                    .padding(.leading,100)
                    
                    HStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.black)
                            .frame(width: 130, height: 50)
                            .overlay {
                                Text("Evening")
                                    .foregroundColor(.white)
                            }
                        Spacer()
                        ForEach(0..<when.count){i in
                            HStack{
                                Button{
                                    selected3 = i
                                }label: {
                                    Circle()
                                        .frame(width: 20)
                                        .foregroundColor(selected3 == i ? .blue : .secondary)
                                        .overlay {
                                            if(selected3 == i){
                                                Circle()
                                                    .frame(width: 10)
                                                    .foregroundColor(.white)
                                            }
                                            
                                        }
                                    Text("\(when[i])")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                }
                                
                            }
                            .padding(.leading,60)
                            
                        }
                        Menu {
                            ForEach(dropDownList, id: \.self){ client in
                                Button(client) {
                                    self.value3 = client
                                }
                            }
                        } label: {
                            VStack(spacing: 5){
                                HStack{
                                    Text(value3.isEmpty ? placeholder : value3)
                                        .foregroundColor(value3.isEmpty ? .gray : .black)
                                    Spacer()
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(Color.black)
                                        .font(Font.system(size: 20, weight: .bold))
                                }
                                .padding(.leading)
                                .padding(.horizontal)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .strokeBorder(.black,lineWidth: 4)
                                        .frame(width: 100, height: 50)
                                )
                            }
                            .frame(width: 120, height: 50)
                        }
                        .padding(.leading,40)

                    }
                    .padding(.trailing,150)
                    .padding(.leading,100)
                }
                Spacer()
                Button{
                    
                }
            label: {
                Text("Comfirm")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .background{
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(.black))
                            .frame(width: 350, height: 50)
                            .shadow(radius: 3, x: 2, y: 5)
                    }
                }
            .padding(.bottom,20)

            }
        }
    }
}


struct MedicineView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineView()
    }
}
