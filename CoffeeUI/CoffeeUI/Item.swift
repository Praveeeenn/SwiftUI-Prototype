//
//  Item.swift
//  CoffeeUI
//
//  Created by Praveen on 25/06/19.
//  Copyright © 2019 MishiPay. All rights reserved.
//

import Foundation
import SwiftUI

struct Item: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Hashable, Codable {
        case Models = "Models"
        case Bollywood = "Bollywood"
        case Marvel = "Marvel"
    }
    
}
