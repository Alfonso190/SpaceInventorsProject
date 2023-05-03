//
//  NewBlockView.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import SwiftUI

struct EditBlockView: View {
    
    @State var indexOfArray: Int
    @State var name : String
    @State var colorBlock : Color
    @State var info : String
    
//    @Binding var currentBlock : Block
    
    func editNewBlock(name:String,colorBlock:Color,info:String){

        let newBlock = Block(name: name,colorBlock: colorBlock, info: info)
        //myData.blocks.remove(at: 0)
        myData.blocks.append(newBlock)
        myData.blocks.remove(at: indexOfArray)
    }
    
    @ObservedObject var myData = sharedData
    
    
    var body: some View {
        NavigationStack{
            
            Form{
                Section("Name"){
                    TextField("Edit name",text: $name)
                    
                    
                }
                Section("Info"){
                    TextField("Edit info",text: $info)
                    
                }
                Section(header: Text("Select Color")) {
                    ColorPicker("Select a favorite Color", selection: $colorBlock)
                }
                
                
            }
            
            ZStack{
                Button("Save"){
                    editNewBlock(name: name,colorBlock: colorBlock, info: info)

                }
            }
            
            .padding()
            
//            .toolbar{
//                ToolbarItem{
//                    Button("Done"){
//                        editNewBlock(name: name,colorBlock: colorBlock, info: info)
//                    }
//                }
//
//            }
            .navigationTitle("Edit")
        }
    }
}

struct EditBlockView_Previews: PreviewProvider {
    static var previews: some View {
        EditBlockView(indexOfArray: 0, name: "",colorBlock: .black, info:"")
    }
}
