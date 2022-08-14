//
//  recipeView.swift
//  avcado
//
//  Created by Ahmed Mohna on 02/07/2022.
//

import SwiftUI

struct recipeView: View {
    
    // MARK:property
    let recipe:Recipe
    var isit = false
    var aligment = true
    @State var showModel = false
     // MARK:body
    
    var body: some View {
        
        VStack(alignment: aligment ? .leading : .center ,spacing: aligment ? 0 : 15 ){
            
            Image(recipe.image)
                .resizable()
                .scaledToFit()
             
             
            Text(recipe.title)
           
                .font(.system(.largeTitle, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenMedium"))
                .shadow(color: .black.opacity(0.5), radius: 20, x: 4, y: 2)
                .padding(.top)
                .padding(.leading)
            
            if aligment {
            Text(recipe.headline)
                .font(.system(.body, design: .serif))
                .foregroundColor(Color.gray)
                .fontWeight(.semibold)
                .padding(.leading)
                .padding(.vertical,10)
            }
            
            HStack{
                
                ForEach(1..<6) { count in
                   
                   
                    Image(systemName: count > recipe.rating ? "star" : "star.fill")
                        .foregroundColor(.yellow)
                }
                
             
    
            
            }.padding(.leading)
            
            HStack{
                Image (systemName: "person.2")
                Text("Serves: \(recipe.serves)")
                
                
                Image (systemName: "clock.badge.checkmark")
                Text("Prep: \(recipe.cooking)")
                
                Image (systemName: "flame")
                Text("Cooking: \(recipe.serves)")
                
                
                
                
                
            }.padding()
                .font(.system(.footnote, design: .serif))
                
                .foregroundColor(Color.gray)
                
            
        }
        .onTapGesture {
            showModel=true
        }
        .background(Color.white)
        .sheet(isPresented:$showModel, content: {
            recipePreparingView(recipe: recipe)
        })
        
        .cornerRadius(22)
        


    }
}

struct recipeView_Previews: PreviewProvider {
    
    static var previews: some View {
        recipeView(recipe:recipes[0])
            .padding().background(Color.green)
            .previewLayout(.sizeThatFits)
          
    }
}
