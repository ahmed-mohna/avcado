//
//  AvacadosView.swift
//  avcado
//
//  Created by Ahmed Mohna on 25/06/2022.
//

import SwiftUI

struct AvacadosView: View {
    @State var  pustAnimation : Bool = false
    var body: some View {
        VStack{
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width /
                       1.4, height: UIScreen.main.bounds.height/3.3, alignment: .center)
                .scaleEffect(pustAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
            
            Text("Avocados")
                .font(.system(size: 35, weight: .bold, design: .serif))
                .shadow(color: .black, radius: 3, x:6, y: 2)
                .foregroundColor(.white)
                .padding(.bottom,25)
            
            Text( "Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more! ")
               
                .font(.system(size: 20, weight: .semibold, design: .serif))
                .fontWeight(.light)
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.8), radius: 1, x: 3, y: 3)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .padding()
                
                
            Spacer()
            Spacer()
        }
        .background(Image("background").resizable()
            .aspectRatio(contentMode: .fill))
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            pustAnimation=true
        }
    }
        

}
struct AvacadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvacadosView()
            .environment(\.colorScheme, .light)
    }
}

