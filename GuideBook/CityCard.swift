//
//  CityCard.swift
//  GuideBook
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/17.
//

import SwiftUI

struct CityCard: View {
    
    var city: City
    
    var body: some View {
        ZStack{
            Rectangle()
                
                .background {
                    Image(city.imageName)
                                    .resizable()
                                    .frame(width: 400, height: 400)
                                    .cornerRadius(15)
                }
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack(alignment: .leading){
                
                Text(city.name)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Spacer()
                Text(city.summary)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }.padding()
            
        }
        .frame(height: 400)
    }
}

#Preview {
    CityCard(city: City(name: "Tokyo", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", imageName: "tokyo", attractions: [Attractions]()))
}
