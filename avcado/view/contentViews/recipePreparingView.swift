//
//  recipePreparingView.swift
//  avcado
//
//  Created by Ahmed Mohna on 03/07/2022.
//

import SwiftUI

struct recipePreparingView: View {
    // MARK: property
    var recipe:Recipe
    @State var isAppeared = false
    @Environment(\.presentationMode) var presentationMode
    
    // MARK:body
    var body: some View {
        ScrollView {
            VStack{
                recipeView(recipe:recipe,aligment: false)
                
                Text("Ingredients")
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.bottom,10)
                VStack(alignment:.leading){
                    ForEach(recipe.ingredients,id: \.self){ item in
                        Text(item)
                            .font(.system(.subheadline, design: .serif))
                            .fontWeight(.semibold)
                            .padding(.leading,5)
                            .padding(.top,3)
                            
                            
                    }.foregroundColor(.black.opacity(0.8))
                    
                }
                Text("Instruction")
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.semibold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.bottom,10)
                ForEach(recipe.instructions,id: \.self){ item in
             
                
                Image(systemName: "chevron.down.circle")
                    .font(.system(size: 37, weight: .light, design: .serif))
                    .foregroundColor(.green.opacity(0.7))
                    .padding()
                
                Text(item)
                        .padding(.horizontal)
                    
                }
                
            }
            
        }.edgesIgnoringSafeArea(.top)
            .overlay(VStack {
                HStack{
                    Spacer()
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.system(size: 30, weight:.semibold, design: .serif))
                            .foregroundColor(.white)
                            .scaleEffect(isAppeared ? 1.1 : 0.9)
                            .shadow(color: .black.opacity(0.6), radius: 12, x: 4, y: 4).padding()
                    }
                    

                }
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 1.4).repeatForever()){
                        isAppeared=true
                    }
                  
                }
                Spacer()
            })
    }
}

struct recipePreparingView_Previews: PreviewProvider {
    static var previews: some View {
        recipePreparingView(recipe: recipes[0])
    }
}
