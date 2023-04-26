//
//  morningOptionView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 26/04/23.
//

import SwiftUI

struct morningOptionView: View {
    let when = ["Before Meal","After Meal"]
    @State var selected1: Int = -1
    @State var selected2: Int = -1
    @State var selected3: Int = -1
    var dropDownList = ["1/2", "1", "2"]
    @State var value1 = ""
    @State var value2 = ""
    @State var value3 = ""
    var placeholder = "Dose"

    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(.black)
                .frame(width: 130, height: 50)
                .overlay {
                    Text("Morning")
                        .foregroundColor(.white)
                }
            Spacer()
            ForEach(0..<when.count){i in
                HStack{
                    Button{
                        selected1 = i
                    }label: {
                        Circle()
                            .frame(width: 20)
                            .foregroundColor(selected1 == i ? .blue : .secondary)
                            .overlay {
                                if(selected1 == i){
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
                        self.value1 = client
                    }
                }
            } label: {
                VStack(spacing: 5){
                    HStack{
                        Text(value1.isEmpty ? placeholder : value1)
                            .foregroundColor(value1.isEmpty ? .gray : .black)
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
}

struct morningOptionView_Previews: PreviewProvider {
    static var previews: some View {
        morningOptionView()
    }
}
