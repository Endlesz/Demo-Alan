//
//  RecipeModel.swift
//  Recipe_List_App (iOS)
//
//  Created by Alan Su on 13/9/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        
        // Create an instance of dataservices and get the data
        self.recipes = DataService().getlocaldata()
        
        
        
        //set the recipes property
        
        
        
        
    }
    
}
