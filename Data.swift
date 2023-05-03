//
//  Data.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import Foundation
import SwiftUI

class SharedData : ObservableObject{
    
    @Published var blocks = [Block(name: "Meal",colorBlock: .green,info: "This block is used when you need a quickly remainder card for meals"),Block(name: "Free time", colorBlock: .blue,info: "This block is used when you need a card for planning free time activity"),Block(name: "Work",colorBlock: .orange, info:"This block is used to plan an activity for work")]
    
    
}

var sharedData = SharedData()
