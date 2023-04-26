import SwiftUI

struct test: View {
    @State private var isSelected = false
    @State var selected: Int = -1
    let times = ["Morning","Afternoon","Evening"]
    var body: some View {
        VStack {
            ForEach(0..<times.count){i in
                HStack{
                    Button{
                        selected = i
                    }label: {
                        Circle()
                            .frame(width: 20)
                            .foregroundColor(selected == i ? .blue : .secondary)
                            .overlay {
                                if(selected == i){
                                    Circle()
                                        .frame(width: 10)
                                        .foregroundColor(.white)
                                }
                                    
                            }
                        Text("\(times[i])")
                    }
                    
                   
                }
            }
        }
    }
}

//struct RadioButton: View {
//    @Binding var selected: Bool
//
//    var body: some View {
//        Button(action: { self.selected.toggle() }) {
//            ZStack {
//                Circle()
//                    .fill(selected ? Color.blue : Color.gray)
//                    .frame(width: 20, height: 20)
//                if selected {
//                    Circle()
//                        .fill(Color.white)
//                        .frame(width: 10, height: 10)
//                }
//            }
//        }
//    }
//}

struct test_Preview: PreviewProvider {
    static var previews: some View {
        test()
    }
}
