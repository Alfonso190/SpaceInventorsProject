//
//  InfoBlockView.swift
//  SpaceInventorsProject
//
//  Created by Alfonso Amendola on 27/04/23.
//

import SwiftUI

struct InfoBlockView: View {
    
    @ObservedObject var myData = sharedData
    
    var currentBlock : Block
    
    var body: some View {
        ZStack{
            currentBlock.colorBlock.opacity(0.3)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "info.circle.fill")
                    Text(currentBlock.name)
                        .font(.title).bold()
                }
                HStack{
                    Image("picture_one")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 200)
                        .cornerRadius(15)
                        .shadow(radius: 10)
                        .padding()
                }
                ZStack{
                    Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.3)], startPoint: .top, endPoint: .bottom))
                        .frame(height: 150)
                        .cornerRadius(10)
                        .shadow(radius: 50)
                        .padding()
                    
                    Text(currentBlock.info)
                        .font(.body).bold().padding()
                    
                }
                HStack{
                    Image(systemName: "fork.knife.circle.fill")
                    Text("SUGGESTED USE")
                        .font(.body).bold().padding()
                    
                }
                ZStack{
                    
                    Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.3)], startPoint: .top, endPoint: .bottom))
                        .frame(height: 150)
                        .cornerRadius(10)
                        .shadow(radius: 50)
                        .padding()
                    
                }
                
                
            }
            
        }
    }
    
    
    
    struct InfoBlockView_Previews: PreviewProvider {
        static var previews: some View {
            InfoBlockView(currentBlock : sharedData.blocks[0])
        }
    }
    
}
