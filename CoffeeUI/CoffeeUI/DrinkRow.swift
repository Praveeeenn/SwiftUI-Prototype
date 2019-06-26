//
//  DrinkRow.swift
//  CoffeeUI
//
//  Created by Praveen on 25/06/19.
//  Copyright © 2019 MishiPay. All rights reserved.
//

import SwiftUI

struct DrinkRow : View {
    
    var categoryName: String
    var items: [Item]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.title)
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach (self.items.identified(by: \.id)) {
                        item in
                        PresentationButton(destination: ItemDetail(item: item)) {
                            DrinkItem(item: item)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                            }
                            .padding()
                        }
                    }
                
            }//scrollView
        }//V Stack
    }
}

#if DEBUG
struct DrinkRow_Previews : PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT", items: itemData)
    }
}
#endif
