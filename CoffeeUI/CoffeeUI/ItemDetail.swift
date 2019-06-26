//
//  ItemDetail.swift
//  CoffeeUI
//
//  Created by Praveen on 26/06/19.
//  Copyright © 2019 MishiPay. All rights reserved.
//

import SwiftUI

struct ItemDetail : View {
    
    var item: Item
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Rectangle()
                .frame(height: 80)
                .opacity(0.25)
                .blur(radius: 10)
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text(item.name)
                    .color(.white)
                    .font(.largeTitle)
                } .padding(.leading)
                  .padding(.bottom)
                  Spacer()
            }
        }
            .listRowInsets(EdgeInsets())
            VStack {
                Text(item.description)
                    .color(Color.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                    .padding(.bottom)
                HStack(alignment: .center) {
                    OrderButton()
                }
            }
        }.edgesIgnoringSafeArea(.top)
         .navigationBarHidden(false)
    }
}

struct OrderButton : View {
    
    var body: some View {
        Button(action: {}) {
            Text("Rate Now")
                .color(Color.white)
                .font(.subheadline)
        }
            .frame(width: 200, height: 50)
            .background(Color.blue)
            .cornerRadius(8)
    }
    
}



#if DEBUG
struct ItemDetail_Previews : PreviewProvider {
    static var previews: some View {
        ItemDetail(item: itemData[0])
    }
}
#endif
