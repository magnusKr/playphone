//
//  PlayItem.swift
//  playphone
//
//  Created by Magnus Kraepelien on 13/11/16.
//  Copyright © 2016 playphone. All rights reserved.
//

import Foundation
import UIKit

struct playItem {
    
    let itemId:Double
    let itemName:String
    let itemImage:UIImage

    init(id: Double, name: String, image:UIImage) {
        itemId = id
        itemName = name
        itemImage = image.imageResize(sizeChange: CGSize(width: 80, height: 160))
        
        
    }
}

extension UIImage {
    
    func imageResize (sizeChange:CGSize)-> UIImage{
        
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        self.draw(in: CGRect(origin: CGPoint.zero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        return scaledImage!
    }
    
}
