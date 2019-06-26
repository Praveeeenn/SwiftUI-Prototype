//
//  ContentView.swift
//  CoffeeUI
//
//  Created by Praveen on 24/06/19.
//  Copyright © 2019 MishiPay. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        Home()
        //ItemDetail(item: itemData[0])
    }//body
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
