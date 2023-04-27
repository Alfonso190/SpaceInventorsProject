//
//  NewBlockView.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import SwiftUI

struct NewBlockView: View {
    
    @State var name : String = ""
    @State var notes : String = ""
    @State var colorBlock : Color = Color.black
    @State var info : String = ""
    
 
    
    @ObservedObject var myData = sharedData
    
    func addNewBlock(name:String,notes:String,colorBlock:Color,info:String){
        
        let newBlock = Block(name: name, notes: notes, colorBlock: colorBlock, info: "")
        myData.blocks.append(newBlock)
    }
    
    var body: some View {
        NavigationStack{
            
            Form{
                Section("Name"){
                    TextField("New name ",text: $name)

                    
                }
                Section("Notes"){
                    TextField("New notes",text: $notes)
                    
                }
                Section(header: Text("Select Color")) {
                    ColorPicker("Select a favorite Color", selection: $colorBlock)
                }
                Section("Info"){
                    TextField("New info", text: $info)
                }
                    
                
            }
            
            .toolbar{
                ToolbarItem{
                    Button("Add"){
                        addNewBlock(name: name, notes: notes, colorBlock: colorBlock, info: info)
                       
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
