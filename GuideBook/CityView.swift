//
//  ContentView.swift
//  GuideBook
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                VStack{
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                }.padding(.horizontal)
                
            }
        }
        .ignoresSafeArea()
        .onAppear{
            cities = dataService.getData()
        }
        
    }
}

#Preview {
    CityView()
}
