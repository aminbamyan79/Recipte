//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Nauti Nav on 22/07/22.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
            Text("Featured view")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
           // RecipeListView()
                
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
          //  RecipeListView()
            
            
            
        }
    
    }
    
    
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeTabView()
            RecipeTabView()
        }
    }
}
