//
//  ContentView.swift
//  Shared
//
//  Created by Richard Nkanga on 15/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var arrayOfPositveQuotes = ["You are loved!","You are wanted!","You are amazing!", "You are beautiful!","You are the best version of you!","You are not alone!","You are safe!"]
    @State var affiramation = "Today is gonna be an awesome day!"
    
    
    var body: some View {
        ZStack {
            Color(red: 0.96, green: 0.93, blue: 0.85)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                
                Text ( "Welcome to my random positive quotes generator! 😇")
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.title)
                    .foregroundColor(.brown)
                    .frame(width: 430, height: 150)
                    .padding(.top, 60)
                
            
                Spacer()
                Text(affiramation)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.regular)
                    .foregroundColor(Color(hue: 0.093, saturation: 0.446, brightness: 0.241))
                    .multilineTextAlignment(.center)
                Spacer()
                    
                
                Button("Tap Me!") {
                    let randQuotes = Int.random(in: 0...6)
                    
                    
                    affiramation = arrayOfPositveQuotes[randQuotes]
                    
    
                    
                    
                   
                    
                   
                }
                .padding()
                .frame(width: 110, height: 60)
                .foregroundColor(.white)
                .background(.brown)
                
                
                .padding(.bottom, 200)
                

                
                
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
