//
//  ContentView.swift
//  Shared
//
//  Created by Alan Su on 13/9/22.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView{
        
        List(model.recipes){ a in
            
            NavigationLink(destination: RecipeDetailView(recipe:a) , label:{
                
                HStack(spacing: 20.0){
                    Image(a.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: .center)
                        .clipped()
                        .cornerRadius(10)
                      
                    Text(a.name)
                }
                
            } )
            
            
        }.navigationBarTitle(Text("Recipes"))
        
    }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
