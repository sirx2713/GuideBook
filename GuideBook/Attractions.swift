//
//  Attractions.swift
//  GuideBook
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/16.
//

import Foundation

struct Attractions: Identifiable{
    
    var id: UUID = UUID()
    var name:String
    var summary:String
    var longDescription:String
    var imageName:String
    var latLong:String
}
