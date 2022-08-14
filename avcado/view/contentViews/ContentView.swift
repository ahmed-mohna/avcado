//
//  ContentView.swift
//  avcado
//
//  Created by Ahmed Mohna on 25/06/2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
  
var body: some View {
        let headers = header1Data
    
    ScrollView(.vertical) {
        VStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        
                        ForEach(headers) {
                            item in
                            headerView(head: item)
                                .frame(width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height/3, alignment: .center)
                            
                            
                        }
                    }
                }
                //header scrool view
        }//header
        Text("Avocados Dishes")
            
            .font(.system(.largeTitle, design: .serif))
            .fontWeight(.bold)
            .padding()
            .foregroundColor(Color("ColorGreenMedium"))
            .shadow(color: .green.opacity(0.3), radius: 12, x: 3, y: 3)
        footer()
        .padding(.top,30)
        Text("Avocados Dishes")
            
            .font(.system(.largeTitle, design: .serif))
            .fontWeight(.bold)
            .padding()
            .foregroundColor(Color("ColorGreenMedium"))
            .shadow(color: .green.opacity(0.3), radius: 12, x: 3, y: 3)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{  ForEach(facts) { item in
                factsView(fact: item)
                    .scaleEffect(0.87)
                
            }}
        }
        footertitle()
            .padding(.top,10)
            .padding()
        
        
           
        ForEach(recipes) { item in
            recipeView (recipe: item).padding(20)
        }
        
         }
    .background(Color.gray.opacity(0.2))
    .edgesIgnoringSafeArea(.top)
        
     
    
    
    
   
    
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
