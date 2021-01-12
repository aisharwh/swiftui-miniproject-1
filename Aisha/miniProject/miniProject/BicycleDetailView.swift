//
//  BicycleDetailView.swift
//  miniProject
//
//  Created by MacBook` on 04/01/2021.
//

import SwiftUI

struct BicycleDetailView: View {
    let bicycle: Bicycle
    @State var name = ""
    @State var phone = ""
    @State var hours = 0
    @State var bicycleNO = 0
    @State var total = 0
    
    var body: some View {
        
            
        
        VStack (alignment: .center){
            Image (bicycle.bicycle)
                .resizable()
                .scaledToFit()
                .background(Color.white)

            TextField("اسم المستلم ", text: $name).padding(2)
            TextField(" الهاتف", text: $phone).padding(2)
            
            HStack{

            Stepper("عدد الساعات", value: $hours, in: 0...100)
            Text("\(hours)")
            }.padding(5)
            
            HStack{
            Stepper("عدد الدراجات", value: $bicycleNO, in: 0...100)
            Text("\(bicycleNO)")
            }.padding(5)
              
            let total = hours * bicycleNO
            Text("\(total)")
            Text("المجموع الكلي")
            
            NavigationLink(
                destination: receipt(name: self.$name, hours: self.$hours, phone: self.$phone, total: self.$total),
                label: {
                    Text("اضغط للمتابعه")
                       .foregroundColor(.white)
                       .font(.system(size: 25))
                       .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                       .padding(.vertical,10)
                       .padding(.horizontal, 20)
                       .background(Color.blue)
                       .clipShape(Capsule())
                })
            Spacer()
        }.foregroundColor(.black)
        
        
       
    }
    
}

struct BicycleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BicycleDetailView(bicycle: bicycles[0])
    }
}

