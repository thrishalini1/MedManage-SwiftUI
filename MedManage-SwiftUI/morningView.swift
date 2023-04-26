//
//  morningView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 25/04/23.
//

import SwiftUI

struct morningView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil)
    ]
    @State var selectedButton : Int = -1
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground).ignoresSafeArea()
            VStack{
                LazyVGrid(
                    columns: columns,
                    alignment: .leading,
                    spacing: 8, pinnedViews: []) {
                        ForEach(0..<6){index in
                            
                            Button{
                                selectedButton = index
                            }
                        label:{
                            RoundedRectangle(cornerRadius: 6)
                                .fill(selectedButton == index ? .blue : Color("ColorSet5"))
                                .frame(width: 100, height: 40)
                                .overlay {
                                    switch(index){
                                    case 0:
                                        Text("9:00 AM")
                                            .foregroundColor(selectedButton == index ? .white : Color(UIColor.label))

                                    case 1:
                                        Text("9:30 AM")
                                            .foregroundColor(selectedButton == index ? .white : Color(UIColor.label))
                                    case 2:
                                        Text("10:00 AM")
                                            .foregroundColor(selectedButton == index ? .white : Color(UIColor.label))
                                    case 3:
                                        Text("10:30 PM")
                                            .foregroundColor(selectedButton == index ? .white : Color(UIColor.label))
                                    case 4:
                                        Text("11:00 AM")
                                            .foregroundColor(selectedButton == index ? .white : Color(UIColor.label))
                                    case 5:
                                        Text("11:30 PM")
                                            .foregroundColor(selectedButton == index ? .white : Color(UIColor.label))
                                    default:
                                        Text("NIL")
                                            .foregroundColor(.white)

                                    }
                                }
                                .shadow(color: Color(UIColor.label).opacity(0.4), radius: 10, x: 5, y: 5)
                                .shadow(color: Color(UIColor.systemBackground).opacity(0.7), radius: 10, x: -5, y: -5)

                        }
                            
                        }
                    }
                    .padding(.leading,30)
            }
            
        }
    }
}

struct morningView_Previews: PreviewProvider {
    static var previews: some View {
        morningView()
    }
}
