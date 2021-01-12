//
//  ContentView.swift
//  miniProject
//
//  Created by MacBook` on 04/01/2021.
//


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
         
            List(bicycles) { bicycle in
                NavigationLink(
                    destination: BicycleDetailView(bicycle: bicycle),
                    label: {
                        BicycleRow(bicycle: bicycle)
               })
                
        }
        .navigationBarTitle("تأجير الدراجات")
        
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BicycleRow: View {
    let bicycle: Bicycle
    
    var body: some View {
        HStack (alignment: .center) {
            
            Text(bicycle.bicycle)
                .frame(width: 50,height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding()
            
            Image(bicycle.bicycle)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            
        }
    }
}
