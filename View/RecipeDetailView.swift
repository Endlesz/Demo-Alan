//
//  RecipeDetailView.swift
//  Recipe_List_App
//
//  Created by Alan Su on 16/9/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        //ScrollView{
            
            VStack(alignment: .leading){
                
                
                // MARK: Image
                VStack() {
                    Image(recipe.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 200, alignment: .center)
                        .clipped()
                        .cornerRadius(10)
                }
                // MARK: Igredients
                
                ScrollView{
                    
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Ingredients")
                            .font(.headline)
                            .padding(.bottom, 5)
                        
                        ForEach (recipe.ingredients, id: \.self){
                            
                            item in
                            
                            Text("✪  " + item)
                        
//                        ForEach (recipe.ingredients, id: \.self){ item in
//                            Text ("- "+item)
                               
                                
                        }
                        
                        
                    }
                    .padding(.top)
                    
                    .frame(width: 350.0)
                    
                    Divider()
                    
                    // MARK: Directions
                    VStack(alignment: .leading){
                        Text ("Directions")
                            .font(.headline)
                            .padding(.bottom, 5)
                            .padding(.top, 10)
                        
                        ForEach(0..<recipe.directions.count, id: \.self){
                            index in
                            
                            Text(String(index+1) + ". " + recipe.directions[index])
                                .padding(.bottom, 2)
                        }
                        
                    }.padding(.horizontal)
                    
                    
                }.navigationBarTitle(recipe.name)
                
                
                
            }
            //.padding(.horizontal)

        //}.navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe and passs it into the detail view so that we can see a preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
