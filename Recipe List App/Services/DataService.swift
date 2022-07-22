//
//  DataService.swift
//  Recipe List App
//
//  Created by Nauti Nav on 17/07/22.
//

import Foundation
class DataService{
    
    static func getGlobalData() -> [Recipe] {
        
        let pathString=Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else{
            
            return [Recipe]()
        }
        
        let url=URL(fileURLWithPath: pathString!)
       
        do{
        let data=try Data(contentsOf: url)
        let decoder=JSONDecoder()
            do{
               
            let RecipeData=try decoder.decode([Recipe].self, from: data)
                for r in RecipeData{
                    r.id=UUID()
                }
                return RecipeData
                
            }
            catch{
                print(error)
                
            }
            
        }
        catch{
            print(error)
            
        }
        return [Recipe]()
    
}
}
