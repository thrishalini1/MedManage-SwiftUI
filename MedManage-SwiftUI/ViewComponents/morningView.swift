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
            Color.white.ignoresSafeArea()
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
                                .fill(selectedButton == index ? .blue : .white)
                                .frame(width: 100, height: 40)
                                .overlay {
                                    switch(index){
                                    case 0:
                                        Text("9:00 AM")
                                            .foregroundColor(selectedButton == index ? .white : .black)

                                    case 1:
                                        Text("9:30 AM")
                                            .foregroundColor(selectedButton == index ? .white : .black)
                                    case 2:
                                        Text("10:00 AM")
                                            .foregroundColor(selectedButton == index ? .white : .black)
                                    case 3:
                                        Text("10:30 PM")
                                            .foregroundColor(selectedButton == index ? .white : .black)
                                    case 4:
                                        Text("11:00 AM")
                                            .foregroundColor(selectedButton == index ? .white : .black)
                                    case 5:
                                        Text("11:30 PM")
                                            .foregroundColor(selectedButton == index ? .white : .black)
                                    default:
                                        Text("NIL")
                                            .foregroundColor(.white)

                                    }
                                }
                                .shadow(color: Color.black.opacity(0.4), radius: 10, x: 10, y: 10)
                                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                            
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
