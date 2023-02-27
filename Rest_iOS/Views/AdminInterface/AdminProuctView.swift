
//  AdminProductView.swift
//  Rest_iOS
//
//  Created by Шаген  Арабачян on 23.02.2023.
//

// Здесь мы добавляем новый продукт:

import SwiftUI
import PhotosUI
 
struct AdminProductView: View {
    
    @State var title: String = ""
    @State var price: Int?
    @State var category: Category = .first // будет в виде пикера
    @State var description: String = ""
    @State var selectedItem: PhotosPickerItem?
    @State var data: Data?
    
    var body: some View {
        VStack {
            
            
            PhotosPicker(selection: $selectedItem) {
                Image(systemName: "camera")
                    .resizable()
                    .frame(width: 240, height: 200)
                    .aspectRatio(contentMode: .fit)
            }
           
            TextField("Название", text: $title)
                .padding().background(.white)
                .padding(.horizontal)
            TextField("Цена", value: $price, format: .number)
                .padding().background(.white)
                .padding(.horizontal)
            Picker("Категория", selection: $category) {
                ForEach(Category.allCases, id: \.rawValue) { category in
                    Text(category.rawValue)
                        .tag(category)
                }
                
            }.frame(maxWidth: .infinity)
            .padding(8).background(.white)
            .padding(.horizontal)
            .tint(.black)
            
            TextField("Описание", text: $description)
                .padding().background(.white)
                .padding(.horizontal)
            
            Button {
                print("Создать")
            } label: {
                Text("Создать")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("brown"))
                    .font(.title3).bold()
                
            }

            
        }.frame(maxHeight:.infinity)
            .background(Color("lightGray"))
    }
}


struct AdminProductView_Previews: PreviewProvider {
    static var previews: some View {
        AdminProductView()
    }
}

                      //чтоб можно было проводить итерации по кейсам
enum Category: String, CaseIterable {
    
    case first = "Первые блюда "
    case second = "Вторые блюда "
    case drinks = "Напитки"
    case deserts = "Десерты"
    case salats = "Салаты"
}
