//
//  footertitle.swift
//  avcado
//
//  Created by Ahmed Mohna on 27/06/2022.
//

import SwiftUI

struct footertitle: View {
    var body: some View {
        VStack{
            Text("All About Avacados")
                
                .font(.system(.largeTitle, design: .serif))
                .fontWeight(.semibold)
                .padding()
                .foregroundColor(Color("ColorGreenMedium"))
                .shadow(color: .green.opacity(0.2), radius: 12, x: 3, y: 3)
            
            Text("Every Thing You Should Know About Avocados    But Were Afraid To Ask")
                
                .font(.system(.body, design: .serif))
                .fontWeight(.regular)
                .padding()
                .foregroundColor(.black.opacity(0.65))
                .shadow(color: .gray.opacity(0.2), radius: 12, x: 3, y: 3)
                .multilineTextAlignment(.center)
        }
    }
}

struct footertitle_Previews: PreviewProvider {
    static var previews: some View {
        footertitle()
    }
}
