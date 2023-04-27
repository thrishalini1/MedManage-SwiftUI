//
//  MedicineDetailView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 26/04/23.
//

import SwiftUI

struct MedicineDetailView: View {
    var body: some View {
        VStack{
            Group{
                Image("prescription")
                    .resizable()
                    .frame(width:34,height: 40)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading)
                Text("Dolo (Paracetamol) 650mg")
                    .foregroundColor(.primary)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading,50)

                Divider()
                    .frame(height: 3)
                    .background(.primary)
                    .padding(.leading,50)
                    .padding(.trailing,300)
                    .padding(.bottom)
            }
            VStack{
                HStack{
                    Text("Contains")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,100)
                    
                    Text("Paracetamol / Acetaminophen(650.0 Mg)")
                        .font(.title2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .foregroundColor(.primary)
                }
            }
            .padding(.trailing,200)
            Divider()
                .foregroundColor(.primary)
                .frame(height: 1)
                .background(.secondary)
                .padding(.leading,70)
                .padding(.trailing,200)

            VStack{
                HStack{
                    Text("Uses")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,100)
                    
                    Text("Pain and Fever")
                        .font(.title2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .foregroundColor(.primary)
                }
            }
            .padding(.trailing,200)
            Divider()
                .foregroundColor(.primary)
                .frame(height: 1)
                .background(.secondary)
                .padding(.leading,70)
                .padding(.trailing,200)
            
            VStack{
                HStack{
                    Text("Side Effects")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,100)
                    
                    Text("Skin rash, itching, blistering")
                        .font(.title2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .foregroundColor(.primary)
                }
            }
            .padding(.trailing,200)
            Divider()
                .foregroundColor(.primary)
                .frame(height: 1)
                .background(.secondary)
                .padding(.leading,70)
                .padding(.trailing,200)
            
            VStack{
                HStack{
                    Text("Therapy")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.leading,100)
                    
                    Text("ANALGESIC/ANTIPYRETIC")
                        .font(.title2)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .foregroundColor(.primary)
                }
            }
            .padding(.trailing,200)
            Divider()
                .foregroundColor(.primary)
                .frame(height: 1)
                .background(.secondary)
                .padding(.leading,70)
                .padding(.trailing,200)

        }
}
}

struct MedicineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineDetailView()
    }
}
