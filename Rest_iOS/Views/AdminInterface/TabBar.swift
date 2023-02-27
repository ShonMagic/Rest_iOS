//
//  TabBar.swift
//  Rest_iOS
//
//  Created by Шаген  Арабачян on 23.02.2023.
//

import SwiftUI

struct TabBar: View {
    
    
    //изменение цвета табБара на коричневый:
    init(){
        UITabBar.appearance().backgroundColor = UIColor(named: "brown")
    }
    
    
    var body: some View {
        TabView {
            NavigationView {   // Cделали у меню свою панель навигации:
                MenuAdminView()
            }
                .tabItem {
                    Image(systemName: "manucard")
                    Text("Меню")
                }
        }.accentColor(Color(.white)) // цвет шрифта меню
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
