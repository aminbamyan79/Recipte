//
//  ContentView.swift
//  Recipe List App
//
//  Created by Nauti Nav on 17/07/22.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var model = RecipeModel()
    var body: some View {
    /*   var array=["Pizza","kfc","Mac"]
        ScrollView{
            ForEach (0...2,id: \.self) {r in
            Text(array[r])
            
        }}*/
        NavigationView {
            
            List(model.recipes){ r in
                NavigationLink(destination:  DetailView(recipe: r),label: {  HStack(spacing: 20.0)  {
                  Image(r.image)
                      .resizable()
                      .scaledToFit()
                      .frame(width: 50, height: 50, alignment: .center)
                      .clipped()
                      .scaledToFill()
                  Text(r.name)
                }})
           
                
            }
            .navigationBarTitle("All Recipes")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
