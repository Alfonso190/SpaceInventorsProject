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
            currentBlock.colorBlock.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image(systemName: "info.circle.fill")
                Text("INFO")
                .padding()
                Text(currentBlock.info)
                    .font(.title3)
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
