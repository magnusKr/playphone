//
//  ViewController.swift
//  playphone
//
//  Created by Magnus Kraepelien on 13/11/16.
//  Copyright © 2016 playphone. All rights reserved.
//

import UIKit
import ZLSwipeableViewSwift

class ViewController: UIViewController {

    var cardImage: UIView?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCards()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func getCards(){
        
        let swipeableView = ZLSwipeableView(frame: CGRect(x: 0, y: 0, width: 300, height: 500))
        
        swipeableView.numberOfActiveView = UInt(1);
        view.addSubview(swipeableView)
        let service = playItemsService()
        let cards = service.getAllItems()
        
        let card = cards[0]
      //  cardImage.view.image = card.itemImage
        
        let imageView = UIImageView(image: card.itemImage)
        cardImage?.addSubview(imageView)
        
        
        
        
        
        
    
    }


}

