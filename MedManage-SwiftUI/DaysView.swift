//
//  DaysView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 26/04/23.
//

import SwiftUI

struct DaysView: View {
    @State var days: Double = 30
    var body: some View {
            Text("Days to take")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,50)
            HStack{
                Slider(value: $days, in: 1.0...90.0,step: 1)
                    .frame(width: 600)
                    .padding(.leading,50)
                    .padding(.trailing,40)
                    
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(.primary,lineWidth: 3)
                    .frame(width: 120, height: 50)
                    .shadow(color: .primary, radius: 1)
                    .overlay(content: {
                        Text("\(days, specifier: "%.0f") Days")
                            .font(.system(size: 25))
                    })
                Spacer()
            }
    }
}

struct DaysView_Previews: PreviewProvider {
    static var previews: some View {
        DaysView()
    }
}
