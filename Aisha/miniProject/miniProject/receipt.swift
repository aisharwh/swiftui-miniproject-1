//
//  receipt.swift
//  miniProject
//
//  Created by MacBook` on 11/01/2021.
//

import SwiftUI

struct receipt: View {
    @Binding var name: String
    @Binding var hours: Int
    @Binding var phone: String
    @Binding var total: Int
    
    var body: some View {
        VStack(alignment: .leading){
        Text("الفاتوره")
        .font(.largeTitle)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .padding()
            
        
            HStack{
                Text("الاسم")
                Spacer()
                Text(name)
            }.padding()
            
            HStack{
                Text("الساعات")
                Spacer()
                Text("\(hours)")
            }.padding()
            
            HStack{
                Text("رقم الهاتف")
                Spacer()
                Text(phone)
            }.padding()
            
            HStack{
                Text("المبلغ")
                Spacer()
                Text("\(total)")
            }.padding()
            
            Spacer()
            
        }
    }
}
    
/*struct receipt_Previews: PreviewProvider {
    static var previews: some View {
     receipt(name: $"", hours: 0, phone: "", total: 0)
    }
}*/
