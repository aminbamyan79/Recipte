//
//  DetailView.swift
//  Recipe List App
//
//  Created by Nauti Nav on 18/07/22.
//

import SwiftUI

struct DetailView: View {
    var recipe:Recipe
    var body: some View {
        ScrollView{
            Image(recipe.image).resizable().scaledToFill()
            VStack (alignment:.leading){
                
               VStack(alignment: .leading){    Text("Inegredients")
                        .font(.headline).padding([.top, .bottom], 5)
                    ForEach (recipe.ingredients,id: \.self) { item in
                        Text("- • " + item)
                            .padding(.bottom,5)
                    }
                }
               .padding(.horizontal)
                Divider()
                VStack(alignment: .leading){
                    Text("Directions").font((.headline)).padding([.top, .bottom], 5)
                    ForEach (0..<recipe.directions.count, id: \.self){ index in
                        Text(String(index+1) + "•" + recipe.directions[index]).padding(.bottom,5)
                    }
                }
                .padding(.horizontal)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model=RecipeModel()
        DetailView(recipe: model.recipes[0])
    }
}
