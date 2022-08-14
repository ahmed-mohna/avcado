//
//  factsView.swift
//  avcado
//
//  Created by Ahmed Mohna on 27/06/2022.
//

import SwiftUI

struct factsView: View {
    let fact:Fact
    var body: some View {
        HStack{
            ZStack {
                LinearGradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing)
                  
                    .frame(width: UIScreen.main.bounds.width/1.4+40, height: UIScreen.main.bounds.height/7, alignment: .center)
                .cornerRadius(20).frame(width: UIScreen.main.bounds.width/2, alignment: .center)
                
                
                
                HStack{
                    Image(fact.image)
                           
                            .resizable()
                            
                            .frame(width: UIScreen.main.bounds.width/7, height: UIScreen.main.bounds.width/7, alignment: .center)
                            .padding(5)
                            .background(Color.white)
                            .cornerRadius(300)
                            .background( Circle()
                                .stroke(.white, lineWidth: 3)
                                .frame(width: (UIScreen.main.bounds.width/7)+5, height: (UIScreen.main.bounds.width/7)+5, alignment: .center)
                                .background(
                                    Circle()
                                        .stroke(  LinearGradient(colors: [Color("ColorGreenLight"),Color("ColorGreenMedium")], startPoint: .leading, endPoint: .trailing), lineWidth: 9)
                                        .frame(width: (UIScreen.main.bounds.width/7)+8, height: (UIScreen.main.bounds.width/7)+8, alignment: .center).background(  Circle()
                                            .stroke(.white, lineWidth: 8)
                                            .frame(width: (UIScreen.main.bounds.width/7)+14, height: (UIScreen.main.bounds.width/7)+14, alignment: .center)
                                            )
                                )
                            )
                        
                     
                      
                            
                 
                    
                    Text(fact.content)
                        
                        .font(.system(.footnote, design: .serif))
                        .fontWeight(.light)
                        .foregroundColor(.white )
                        .padding(.trailing,20)
                        .frame(width: UIScreen.main.bounds.width/1.4, height: UIScreen.main.bounds.height/7, alignment: .center)
                        
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    
                        
                        
                }
                
            }
        }
        
    }
}

struct factsView_Previews: PreviewProvider {
    static var previews: some View {
        factsView(fact: facts[5])
            .previewLayout(.sizeThatFits)
            .padding(30)
    }
}
