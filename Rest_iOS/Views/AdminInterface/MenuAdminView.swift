//
//  MenuAdminView.swift
//  Rest_iOS
//
//  Created by Шаген  Арабачян on 22.02.2023.
//

import SwiftUI

struct MenuAdminView: View {
    
    @State var showProductView = false
    
    // сделаем неск продуктов
    var body: some View {
        List {
            ForEach(defProducts) { product in
                AdminProductCell(product: product)
                    .listRowSeparator(.hidden) // убирает линии разделит.
                    .swipeActions(edge: .trailing,allowsFullSwipe: true) {
                        
                        Button {
                            print("удалить")
                        } label: {
                            Image(systemName: "trash")
                        }.tint(.red) // красный оттенок свайпа удаления
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            print("Редактировать")
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }.tint(.green) // зел цвет свайпа редактирования
                        
                    }
                
            }
            
        }.listStyle(.plain) // растягивает список блюд на весь экран
            .navigationTitle("Меню")
            .overlay(alignment: .bottomTrailing) {
                
                Button {
                    showProductView.toggle()
                } label: {
                    Image(systemName: "plus")
                        .padding()
                        .frame(width: 60, height: 60)
                        .background(Color("brown"))
                        .clipShape(Circle()) // знак + в круглой оболочке
                        .padding()
                        .foregroundColor(.white) // цвет плюсика
                    
                }
                
            }
            .sheet(isPresented: $showProductView){
                AdminProductView()
            }
    }
}
    struct MenuAdminView_Previews: PreviewProvider {
        static var previews: some View {
            MenuAdminView()
        }
    }
    
    
    
    let defProducts = [Product(id: UUID() . uuidString,
                               title: "Шашлык из свиной шейки",
                               price: 400,
                               description: "Подаётся с соусом, маринованным луком и лепёшкой"),
                       Product (id: UUID() .uuidString, title:
                                    "Шаурма с курицей",
                                price: 170, description:
                                    "Классика жанра"),
                       Product(id: UUID() .uuidString, title:
                                "Лагман",
                               price: 370, description:
                                "Сытный восточный суп с говядиной и домашней лапшой"),
                       Product (id: UUID() . uuidString, title: "Лепешка", price: 50, description: "Кавказский хлеб")]
    
    

