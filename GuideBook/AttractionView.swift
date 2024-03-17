//
//  AttractionView.swift
//  GuideBook
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import SwiftUI

struct AttractionView: View {
    var city: City
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                ForEach(city.attractions){attration in
                    
                    NavigationLink {
                        DetailView(attraction: attration)
                    } label: {
                        AttractionsRow(attraction: attration)
                            .padding(.bottom, 50)
                    }.buttonStyle(.plain)
                }
            }
        }.padding(.horizontal)
    }
}

#Preview {
    AttractionView(city: City(name: "Rome",
                              summary: "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale.",
                              imageName: "rome",
                              attractions: [
                                 Attractions(name: "Pantheon",
                                            summary: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
                                            longDescription: """
         The Pantheon from Greek is a former Roman temple and, since 609 AD, a Catholic church (Basilica di Santa Maria ad Martyres or Basilica of St. Mary and the Martyrs) in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus (27 BC – 14 AD). It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down.
         """,
                                            imageName: "pantheon", latLong: "41.898762500696236, 12.476915812472798")
                              ]))
}
