//
//  PlayItemsService.swift
//  playphone
//
//  Created by Magnus Kraepelien on 13/11/16.
//  Copyright © 2016 playphone. All rights reserved.
//

import Foundation
import UIKit


struct playItemsService
{

    func getAllItems() -> Array<playItem> {
        
        let itemImage = UIImage(named: "key.png")
        
        let item = playItem(id: 12, name: "Key", image: itemImage!)
        
        
        var itemArray = [playItem]()

        itemArray.append(item)
        
        return itemArray
    }
}
