//
//  ContentView.swift
//  BusinessCard
//
//  Created by Muzammil Muneer on 05/04/2020.
//  Copyright © 2020 Muzammil Muneer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(red:0.20, green:0.29, blue:0.37)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("portrait2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Muzammil Muneer")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(number: "+923217368918", imageName: "phone.fill")
                InfoView(number: "muzzammilmuneer@gmail.com", imageName: "envelope.fill")

            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let number: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .foregroundColor(Color.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red:0.20, green:0.29, blue:0.37))
                    Text(number)
                        .fontWeight(.bold)
                }
        )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
