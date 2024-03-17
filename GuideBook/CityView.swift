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
        ScrollView{
            VStack{
                ForEach(cities) { city in
                    Text(city.name)
                }
            }.onAppear{
                cities = dataService.getData()
            }
        }
    }
}

#Preview {
    CityView()
}
