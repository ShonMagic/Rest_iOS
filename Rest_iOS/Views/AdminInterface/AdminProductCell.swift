//
//  AdminProductCell.swift
//  Rest_iOS
//
//  Created by Шаген  Арабачян on 23.02.2023.
//

import SwiftUI

struct AdminProductCell: View {
    
    var product: Product
    
    var body: some View {
        
        
        HStack {
            Image("bg")
                .resizable()
                .frame(width: 80, height: 70)
                .aspectRatio(contentMode: .fill)
                .clipShape(Rectangle())
            VStack(alignment: .leading, spacing: 8){
                Text(product.title)
                Text("\(product.price)₽")
            }.bold()
         Spacer() // для того , чтобы картинка прилипла к левому краю
            
        }

    }
}

struct AdminProductCell_Previews: PreviewProvider {
    static var previews: some View {
        
        // проинциализируем наш продукт:
        AdminProductCell(product: defProducts[0])
    }
}
