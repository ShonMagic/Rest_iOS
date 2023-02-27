//
//  AuthView.swift
//  Rest_iOS
//
//  Created by Шаген  Арабачян on 16.02.2023.
//

import SwiftUI

struct AuthView: View {
    
    @State var tableNumber: String = ""
    
    // вход для сотрудника
    @State var showEmployeeSignInView = false
    
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 133)
                .ignoresSafeArea()
                .foregroundColor(Color("brown"))
                .opacity(0.6)
            Spacer()
            
            
            
        }.ignoresSafeArea()
            .background(Image("bg")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            )
        
            .overlay {
                VStack(spacing:  24) {
                    TextField("Введите номер столика",
                              text: $tableNumber )
                    .padding()
                    .background(.white)
                    .font(.title3)    // заголовок 3 уровня
                    
                    // кнопка входа в меню
                    Button {
                        print("Вход")  // это action
                    } label: {
                        Text("В меню")
                    } .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("brown"))
                        .foregroundColor(.white)
                        .font(.title3).bold()
                    
                }.padding(.horizontal, 70)
            }
        
            .overlay(alignment: .bottomLeading) {
                
                // кнопка входа для сотрудника
                Button { showEmployeeSignInView.toggle()
                    
                } label: {
                    Text("Вход для\nсотрудника") // \n\ - переход на новую строку
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .padding(.leading)
                }
            }
        
            .sheet(isPresented: $showEmployeeSignInView){
                EmployeeSignInView()
            }
    }
}

    struct AuthView_Previews: PreviewProvider {
        static var previews: some View {
            AuthView()
        }
    }




struct Previews_AuthView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
