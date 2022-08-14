//
//  footer.swift
//  avcado
//
//  Created by Ahmed Mohna on 27/06/2022.
//
//
//  footer.swift
//  avcado
//
//  Created by Ahmed Mohna on 27/06/2022.
//

import SwiftUI

struct footer: View {
    var body: some View {

        HStack {
            VStack{
                HStack {
                    Image("icon-guacamole")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("guacmole")
                }
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("halfavo")
                }
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("salads")
                }
                Divider().padding(.horizontal,30)
                HStack {
                    Image("icon-sandwiches")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("sandwiches")
                }
            }
            
            VStack{
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .foregroundColor(.gray)
                    .font(Font.largeTitle.weight(.light))
                    .imageScale(.large)
                
                HStack {
                    Divider()
                }
            }
            
            VStack{
                HStack {
                    Image("icon-smoothies")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("smothies")
                }
                Divider()
                HStack {
                    Image("icon-soup")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("soup")
                }
                Divider()
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("tacos")
                }
                Divider().padding(.horizontal,30)
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .frame(width: 42, height: 42, alignment: .center)
                    Spacer()
                    Text("toast")
                       
                }
            }

        }
        .font(.system(.callout , design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight:220)
        
    }
}

struct footer_Previews: PreviewProvider {
    static var previews: some View {
        footer()
          
            .previewLayout(.sizeThatFits)
    }
}
