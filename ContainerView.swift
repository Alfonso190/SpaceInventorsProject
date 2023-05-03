//
//  ContaierView.swift
//  MyFirstProject
//
//  Created by Alfonso Amendola on 21/04/23.
//

import SwiftUI

struct ContainerView: View {
    
    var body: some View {
      
        TabView{
            PlaceHolderView()
                .tabItem{
                    Image(systemName: "checklist")
                    Text("Calendar")
                }
            BlockView()
                .tabItem{
                    Image(systemName:
                            "batteryblock")
                    Text("Blocks")
                }
            
        }
    }
}


struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
