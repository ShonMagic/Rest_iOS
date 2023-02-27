//
//  ProductModel.swift
//  Rest_iOS
//
//  Created by Шаген  Арабачян on 23.02.2023.
//


import Foundation
import SwiftUI

struct Product: Identifiable {
   
    var id: String
    var title: String
    var price: Int
    var description: String
    var imageURL: String?
}







//struct ProductModel_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductModel()
//    }
//}
//
