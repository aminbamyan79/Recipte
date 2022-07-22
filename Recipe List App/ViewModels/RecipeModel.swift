//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Nauti Nav on 17/07/22.
//

import Foundation
class RecipeModel: ObservableObject
{
 @Published var recipes=[Recipe]()
    
    init(){
        self.recipes=DataService.getGlobalData()
       
    }
    
}
