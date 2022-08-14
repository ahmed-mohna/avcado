//
//  headerView.swift
//  avcado
//
//  Created by Ahmed Mohna on 26/06/2022.
//

import SwiftUI

struct headerView: View {
    let head : Header
    
    @State var isanimated = false
    var body: some View {

        
            VStack {
               Spacer()
                headerCoustmizeTextSection(head: head)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/8 , alignment: .center)
                    
                    .cornerRadius(3)
                    .padding()
                  
                    .padding(.bottom,14)
                    .offset(x: 0, y: isanimated ? 0 : 20)
                    .onAppear {
                        withAnimation(Animation.interpolatingSpring(stiffness:10, damping:1)){
                            isanimated=true
                        }
                        
                    }
                                      
                
            }.background(Image(head.image).resizable())
            
        
       
        
    }
}

struct headerView_Previews: PreviewProvider {
    static var previews: some View {
        headerView(head: header1Data[1])
    }
}
