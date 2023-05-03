//
//  NewBlockView.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import SwiftUI

struct NewBlockView: View {
    
    @State var name : String = ""
    @State var colorBlock : Color = Color.black
    @State var info : String = ""
    
 
    
    @ObservedObject var myData = sharedData
    
    func addNewBlock(name:String,colorBlock:Color,info:String){
        
        let newBlock = Block(name: name,colorBlock: colorBlock, info: info)
        myData.blocks.append(newBlock)
    }
    
    var body: some View {
        NavigationStack{
            
            Form{
                Section("Name"){
                    TextField("New name ",text: $name)

                    
                }
                Section("Info"){
                    TextField("New info",text: $info)
                    
                }
                Section(header: Text("Select Color")) {
                    ColorPicker("Select a favorite Color", selection: $colorBlock)
                }
              
                
            }
            
            .toolbar{
                ToolbarItem{
                    Button("Add"){
                        addNewBlock(name: name,colorBlock: colorBlock, info: info)
                       
                    }
                }
                
            }
                .navigationTitle("Adding new block")
        }
    }
}

struct NewBlockView_Previews: PreviewProvider {
    static var previews: some View {
        NewBlockView()
    }
}
