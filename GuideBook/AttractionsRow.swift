//
//  AttractionsRow.swift
//  GuideBook
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/17.
//

import SwiftUI

struct AttractionsRow: View {
    
    var attraction: Attractions
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 120)
                .cornerRadius(15)
            
            Text(attraction.name)
                .bold()
                .font(.largeTitle)
            Text(attraction.summary)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    AttractionsRow(attraction: Attractions(name: "Tsukiji Outer Market",
                                           summary: "Tsukiji Market is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores.",
                                           longDescription: """
        "Tsukiji Market (築地市場, Tsukiji shijō) is a major tourist attraction for both domestic and overseas visitors in Tokyo. The area contains retail markets, restaurants, and associated restaurant supply stores. Before 2018, it was the largest wholesale fish and seafood market in the world. The market opened on 11 February 1935 as a replacement for an older market that was destroyed in the 1923 Great Kantō earthquake. It was closed on 6 October 2018, with wholesale operations moving to the new Toyosu Market.

        Located in Tsukiji in central Tokyo between the Sumida River and the upmarket Ginza shopping district, the inner wholesale market was only open to the trade and did not allow access to visitors.
        """,
                                           imageName: "tsukiji", latLong: "35.66518913611479, 139.76982702573392"))
}
