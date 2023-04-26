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
                
                Group {
                    HStack{
                        Text("Contains")
                            .font(.title2)
                            .foregroundColor(.primary)
                        Spacer()
                        Text("Paracetamol / Acetaminophen(650.0 Mg)")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    .padding(.leading,70)
                    .padding(.trailing,300)
                    .padding(.bottom)
                    Divider()
                        .foregroundColor(.primary)
                        .frame(height: 1)
                        .background(.gray)
                        .padding(.leading,70)
                        .padding(.trailing,200)
                }
                
                Group {
                    HStack{
                        Text("Uses")
                            .font(.title2)
                            .foregroundColor(.primary)
                        Spacer()
                        Text("Pain and Fever")
                            .font(.title2)
                            .foregroundColor(.primary)
                        Spacer()
                    }
                    .padding(.leading,70)
                    .padding(.top)
                    .padding(.trailing,300)
                    .padding(.bottom)
                    Divider()
                        .foregroundColor(.primary)
                        .frame(height: 1)
                        .background(.gray)
                        .padding(.leading,70)
                        .padding(.trailing,200)
                }
                
                Group {
                    HStack{
                        Text("Side Effects")
                            .foregroundColor(.primary)
                            .font(.title2)
                        Spacer()
                        Text("Skin rash, itching, blistering")
                            .foregroundColor(.primary)
                            .font(.title2)
                        Spacer()
                    }
                    .padding(.leading,70)
                    .padding(.top)
                    .padding(.trailing,300)
                    .padding(.bottom)
                    Divider()
                        .foregroundColor(.primary)
                        .frame(height: 1)
                        .background(.gray)
                        .padding(.leading,70)
                        .padding(.trailing,200)
                }
                
                Group {
                    HStack{
                        Text("Therapy")
                            .font(.title2)
                            .foregroundColor(.primary)

                        Spacer()
                        Text("ANALGESIC/ANTIPYRETIC")
                            .font(.title2)
                            .foregroundColor(.primary)

                        Spacer()
                    }
                    .padding(.leading,70)
                    .padding(.top)
                    .padding(.trailing,300)
                    .padding(.bottom)
                    
                    Divider()
                        .foregroundColor(.primary)
                        .frame(height: 1)
                        .background(.gray)
                        .padding(.leading,70)
                        .padding(.trailing,200)
                        .padding(.bottom,20)
                }

            }
    }
}

struct MedicineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MedicineDetailView()
    }
}
