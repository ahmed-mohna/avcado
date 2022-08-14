//
//  RipeningdetailsView.swift
//  avcado
//
//  Created by Ahmed Mohna on 03/07/2022.
//

import SwiftUI

struct RipeningdetailsView: View {
    // MARK: property
    var ripening : Ripening
    @State var IsAppear=false
    // MARK:Body

    var body: some View {

        VStack(spacing:0){
            Spacer()
            Text(ripening.stage)
                .font(.system(.largeTitle, design: .serif))
                .foregroundColor(Color("ColorGreenMedium"))
                .fontWeight(.bold)
                .padding(.top,20)
            
            Text("STAGE")
                .font(.system(.title3, design: .serif))
                .fontWeight(.semibold)
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top,3)
            
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.clear)
                .background(LinearGradient(colors: [Color.white,Color("ColorGreenLight")], startPoint: .top, endPoint: .bottom)).cornerRadius(12)
                .shadow(color: .black.opacity(0.1), radius: 6, x: 4, y: 6)

                .frame(width: 190, height: 50, alignment: .center)
                .overlay(Text(ripening.title)  .font(.system(.title2, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.top,3))
                .padding(.top,20)
            
            Text(ripening.description)
                .font(.system(.body, design:.default))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .opacity(0.8)
                .shadow(color: .black.opacity(0.3), radius: 6, x: 4, y: 6)
                .padding(.horizontal,20)
                .padding(.vertical,40)
            
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.clear)
                .background(LinearGradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenDark")], startPoint: .top, endPoint: .bottom)).cornerRadius(15)
                .shadow(color: .black.opacity(0.2), radius: 6, x: 4, y: 6)

                .frame(width: 170, height: 50, alignment: .center)
                .overlay(Text(ripening.ripeness)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.white))
            
            Text(ripening.instruction)
                .font(.system(.footnote, design: .serif))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal,40)
                .padding(.top,10)
                .padding(.bottom,30)
            
         
        }
            .frame(width: UIScreen.main.bounds.width/1.47, height: UIScreen.main.bounds.height/1.65, alignment: .center)
            .background(LinearGradient(colors: [Color("ColorGreenLight"),Color("ColorGreenMedium")], startPoint: .leading, endPoint: .trailing))
            .cornerRadius(19)
        
            .overlay(ZStack{
                
                VStack {
                    Image(ripening.image)
                        .resizable()
                    .frame(width: UIScreen.main.bounds.height/9, height: UIScreen.main.bounds.height/9, alignment:.center)
                    .cornerRadius(50)
                    .background(Circle()
                        .stroke(Color("ColorGreenLight"), lineWidth: 5)
                        .frame(width: UIScreen.main.bounds.height/9+4, height: UIScreen.main.bounds.height/9+4, alignment:.center)
                        .background(Circle()
                            .stroke(Color.white, lineWidth: 9)
                            .frame(width: UIScreen.main.bounds.height/9+8, height: UIScreen.main.bounds.height/9+8, alignment:.center)
                                    )
                                
                    )
                    .offset( y:IsAppear ?  -UIScreen.main.bounds.height/20 :  -UIScreen.main.bounds.height/10)
                   
                    
                    Spacer()
                }.onAppear {
                    withAnimation (Animation.interpolatingSpring(stiffness: 5, damping: 0.8)){
                        IsAppear=true
                    }
                }
                
            })
        
        

    }
}

struct RipeningdetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningdetailsView(ripening: reipenings[0])
           
    }
}
