//
//  DrinkItem.swift
//  CoffeeUI
//
//  Created by Praveen on 25/06/19.
//  Copyright © 2019 MishiPay. All rights reserved.
//

import SwiftUI

struct DrinkItem : View {
    var item: Item
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(item.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(item.name)
                    .color(.primary)
                    .font(.headline)
                
                Text(item.description)
                    .color(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
        }
    }
}






#if DEBUG
struct DrinkItem_Previews : PreviewProvider {
    static var previews: some View {
        DrinkItem(item: itemData[0])
    }
}
#endif
