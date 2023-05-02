//
//  Data.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import Foundation
import SwiftUI

class SharedData : ObservableObject{
    
    @Published var blocks = [Block(name: "Meal", notes: "", colorBlock: .green,info: "This block is used when you need a quickly remainder card for meals and it is used in a funny way in order to give istantly a remainder for you"),Block(name: "Free time", notes: "", colorBlock: .blue,info: "This block is used when you need a card for planning free time activity"),Block(name: "Work", notes: "", colorBlock: .orange, info:"This block is used to plan an activity for work")]
    
    
}

var sharedData = SharedData()
