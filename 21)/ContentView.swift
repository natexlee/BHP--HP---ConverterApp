//
//  ContentView.swift
//  21)
//
//  Created by Nate Lee on 6/24/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var HP = 0.0
  
    
    
    let formatter: NumberFormatter = {
           let formatter = NumberFormatter()
           formatter.numberStyle = .decimal
           return formatter
       }()
       
    var body: some View {
    
        
       
        GeometryReader { geometry in
            
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.black)
                .ignoresSafeArea(.all)
                .scaledToFill()
            
        ScrollView {
        ZStack {
            RoundedRectangle(cornerRadius: 0).scaledToFill().ignoresSafeArea()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2000)
                .foregroundColor(.black)
            VStack {
          
                Text("HP Calculator")
                
                    .font(.system(size: 50))
                    .foregroundColor(.pink)
                    .bold()
            
            
                TextField("BHP Units", value: $HP, formatter: formatter)
                    .keyboardType(.namePhonePad)
                  
                    .padding(.all)
                    .textFieldStyle(RoundedBorderTextFieldStyle()).foregroundColor(.purple)
                .font(.system(size: 45.0))
                .frame(width: UIScreen.main.bounds.width, height: 370 * 0.75, alignment: .center)
               
                
                // Text that displays calculation

             
                Button(action: {
                    // Calculate 1 BHP = 1.013869665 HP
                   HP *= 1.013869665
                    
                    }, label: {
                        Image(systemName: "arrow.triangle.2.circlepath")
                    }).font(.system(size: 70.0))
                
                .padding(.horizontal)
                
                Button {
                    HP = 0
                } label: {
                    Text("reset")
                        .foregroundColor(.pink)
                }
                .font(.system(size: 65.0))
                .padding(.all)
                
                

                
                Text("\(HP)")
                    }
                  }
               }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .ignoresSafeArea(.keyboard)
            }
        }
    }






















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
