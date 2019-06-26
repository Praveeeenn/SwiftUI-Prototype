//
//  Data.swift
//  CoffeeUI
//
//  Created by Praveen on 25/06/19.
//  Copyright © 2019 MishiPay. All rights reserved.
//

import Foundation

let itemData: [Item] = load("coffeeData.json")


func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("couldn't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("couldn't find \(filename) in main bundle with error \(error)")
    }
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldn't find \(filename) as \(T.self) with error \(error)")
    }
}
