//
//  SwiftUIView.swift
//  MedManage-SwiftUI
//
//  Created by Devam Antahal on 25/04/23.
//

import SwiftUI

class indexSpecifier : ObservableObject{
    
    @Published var index : Int = 0
    
}

let indexS : indexSpecifier = indexSpecifier()

struct SwiftUIView: View {
    var body: some View {
        
        VStack{
            
            makeProfile()
            
            makeDates()
            
            makeAppointments()
        }
        
    }
}

struct makeProfile : View{
    
    let bounds = UIScreen.main.bounds
    
    var body : some View{
        
        let width = bounds.size.width
        let height = bounds.size.height
        
        Rectangle()
            .frame(width : width, height: height * 0.15)
            .foregroundColor(.blue)
            .overlay(
                Text("SCHEDULE")
                    .font(.title)
            )
    }
}

struct makeDates : View{
    
    let bounds = UIScreen.main.bounds
    
    @ObservedObject var copyVar = indexS
    
    func getDate(index : Int) -> Date{
        return Calendar.current.date(byAdding: .day, value : index, to : Date())!
    }
    
    func getDay(date : Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E          dd"
        return dateFormatter.string(from: date)
    }
    
    var body : some View{
        
        let width = bounds.size.width
        let height = bounds.size.height
        
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack{
                
                ForEach(0..<7){index in
                    
                    Spacer()
                    
                    Button {
                        
                        copyVar.index = index
                        
                    } label: {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke()
                            .frame(width: width * 0.2, height : height * 0.1)
                            .overlay(Text(getDay(date: getDate(index: index))))
                        
                    }
                }
                
            }
            
            
        }
        
        Divider()
            .padding()
        
    }
    
}

struct makeAppointments : View{
    
    @ObservedObject var varTemp = indexS
    
    func getDate(index : Int) -> Date{
        return Calendar.current.date(byAdding: .day, value : index, to : Date())!
    }
    
    let bounds = UIScreen.main.bounds
    
    let arr = [0,1,2,3,4,5,6]
    
    var body : some View{
        
        let width = bounds.size.width
        let height = bounds.size.height
        
        ScrollView(.vertical, showsIndicators: true){
            
            LazyVStack{
                
                ForEach(0..<5){ index in
                    
                    Button {
                        //
                    } label: {
                        
                        RoundedRectangle(cornerRadius: 25)
                            .stroke()
                            .frame(width : width * 0.9, height : height * 0.10)
                            .overlay(Text(String(arr[varTemp.index])))
                        
                    }

                    
                }
                
            }
            
        }
        
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
