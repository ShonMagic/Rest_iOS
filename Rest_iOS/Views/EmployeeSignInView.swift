//
//  EmployeeSignInView.swift
//  Rest_iOS
//
//  Created by Шаген  Арабачян on 18.02.2023.
//



import SwiftUI


// Это экран входа для сотрудника 
struct EmployeeSignInView: View {
    
    @State var login: String = ""
    @State var password: String = ""
    
    // вход для сотрудника
    @State var showAdminMenu = false
    
    
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
                    Text("Вход для сотрудника")
                        .font (.title2)
                        .foregroundColor(.white).bold()
                    
                    
                    TextField("Логин",
                              text: $login )
                    .padding()
                    .background(.white)
                    .font(.title3)    // заголовок 3 уровня
                    
                    SecureField("Пароль",
                                text: $password )
                    .padding()
                    .background(.white)
                    .font(.title3)
                    
                    // кнопка входа в меню
                    Button {
                        showAdminMenu.toggle()  // это action
                    } label: {
                        Text("Войти")
                    } .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("brown"))
                        .foregroundColor(.white)
                        .font(.title3).bold()
                    
                }.padding(.horizontal, 70)
            }
    
        .fullScreenCover(isPresented: $showAdminMenu) {
        MenuAdminView()
    }
}
}
        struct EmployeeSignInView_Previews: PreviewProvider {
            static var previews: some View {
                EmployeeSignInView()
            }
        }
    
