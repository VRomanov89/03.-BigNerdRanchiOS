//
//  ItemStore.swift
//  HomeBNR App
//
//  Created by Volodymyr Romanov on 8/18/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
}
