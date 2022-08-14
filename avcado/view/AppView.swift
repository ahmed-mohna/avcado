//
//  AppView.swift
//  avcado
//
//  Created by Ahmed Mohna on 25/06/2022.
//

import SwiftUI

struct AppView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
       }
    var body: some View {
        
            TabView{
               
                    AvacadosView()
                    .tabItem {
                        Image("tabicon-branch")
                        Text("Avocados")
                    }
                    ContentView()
                    .tabItem {
                        Image("tabicon-book")
                        Text("Recipe")
                    }
                RipeningView()
                    .tabItem {
                        Image("tabicon-avocado")
                        Text("Ripening")
                    }
                SettingView()
                    .tabItem {
                        Image("tabicon-settings")
                        Text("Setting")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        
                    }
            }.background(Color.white)
            
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
