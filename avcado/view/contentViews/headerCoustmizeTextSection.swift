//
//  headerCoustmizeTextSection.swift
//  avcado
//
//  Created by Ahmed Mohna on 26/06/2022.
//

import SwiftUI

struct headerCoustmizeTextSection: View {
    let head : Header
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 10, height: UIScreen.main.bounds.height/5.5, alignment: .leading)
                .foregroundColor(Color("ColorGreenLight"))
            
            VStack(alignment:.leading){
  
                Text(head.headline)
                    .font(.system(size: 16, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 4, x: 4, y: 4)
                    .multilineTextAlignment(.leading)
                    .padding(8)

                
                Text(
     
                    head.subheadline
     
                )
                .font(.system(size: 14 , weight: .light, design: .serif))
                .shadow(color: .black.opacity(0.7), radius: 10, x: 4, y: 4)
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .padding([.leading,.bottom,.trailing] ,10)
             
                   
                
                
                
            }
                
        }.background(Color.black.opacity(0.3))
            
            
    }
}

struct headerCoustmizeTextSection_Previews: PreviewProvider {
    static var previews: some View {
        
        headerCoustmizeTextSection(head: header1Data[0])
          
    }
}
