//
//  RipeningView.swift
//  avcado
//
//  Created by Ahmed Mohna on 25/06/2022.
//

import SwiftUI

struct RipeningView: View {
    var body: some View {
        ScrollView(.horizontal){
            VStack{Spacer()}
                HStack{
                    ForEach(reipenings){ item in
                        
                        RipeningdetailsView(ripening: item)
                            .padding(.horizontal,UIScreen.main.bounds.width/45)
                            .padding(.vertical,UIScreen.main.bounds.height/8)
                            
                            
                        
                    }.padding(.leading,20)
                    VStack{Spacer()}
            }.padding(.leading,10)
        }.background(Color.white)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView()
    }
}
