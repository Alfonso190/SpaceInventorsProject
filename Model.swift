//
//  Model.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import Foundation
import SwiftUI

struct Task : Identifiable{
    
    var id = UUID()
    var name : String
    var description : String
    var startingHour : Int
    var startingMin : Int
    var endingHour : Int
    var endingMin : Int
    var block : Block
    
}

struct Block : Identifiable{
    
    var id = UUID()
    var name : String
    var colorBlock : Color
    var info : String
    
}
