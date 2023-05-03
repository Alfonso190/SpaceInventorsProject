//
//  BlockView.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import SwiftUI

struct BlockView: View {
    
    @ObservedObject var myData = sharedData
    @State var modalIsPresented : Bool = false
    
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(myData.blocks){
                        block in
                        NavigationLink(destination : EditBlockView(indexOfArray: myData.blocks.firstIndex(where: { $0.id == block.id
                        })!, name: block.name, colorBlock : block.colorBlock, info : block.info)){
                            ZStack(alignment: .bottomLeading){
                                Image(block.name)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .shadow(radius: 10)
                                    .frame(height: 150)
                                Rectangle().fill(LinearGradient(colors:[.clear,block.colorBlock], startPoint: .top,endPoint: .bottom))
                                HStack(){
                                    Text(block.name)
                                        .font(.title).bold()
                                        .padding()
                                    Image(systemName: "info.circle.fill")
                                    Text(block.info).font(.callout).opacity(3.0)
                                        .padding()
                                }
                                .foregroundColor(.black)
                                .padding()
                            }
                            .cornerRadius(20)
                            .listRowSeparator(.hidden)
                            
                        }
                        
                    }
                    .onDelete {
                        index in
                        myData.blocks.remove(atOffsets: index)
                    }
                }
                .listStyle(.plain)
                
                
            }
            .navigationTitle("Blocks")
            .toolbar{
                ToolbarItem{
                    Button{
                        modalIsPresented.toggle()
                    }label : {
                        Image(systemName: "plus")
                    }.sheet(isPresented: $modalIsPresented) {
                        NewBlockView()
                    }
                }
            }
        }
    }
    
    struct BlockView_Previews: PreviewProvider {
        static var previews: some View {
            BlockView()
        }
    }
}
