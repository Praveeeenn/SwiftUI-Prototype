
//
//  Home.swift
//  CoffeeUI
//
//  Created by Praveen on 26/06/19.
//  Copyright © 2019 MishiPay. All rights reserved.
//

import SwiftUI

struct Home : View {
    
    var categories: [String: [Item]] {
        .init(
            grouping: itemData,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        
            VStack(alignment: .leading, spacing: 5) {
                Text("Tranding Models")
                    .font(.title)
                    .padding(.leading)
                List(
                categories.keys.sorted().identified(by: \String.self)) { key in
                    DrinkRow(categoryName: "\(key)".uppercased(), items: self.categories[key]!).frame(height: 350)
                    }
                    .padding(.top, 20)
            }

    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
