//
//  City.swift
//  GuideBook
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import Foundation

struct City: Identifiable{
    
    var id: UUID = UUID()
    var name:String
    var summary:String
    var imageName:String
    
    var attractions: [Attractions]
    
}
