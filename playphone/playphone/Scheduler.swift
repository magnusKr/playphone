//
//  Scheduler.swift
//  playphone
//
//  Created by Magnus Kraepelien on 29/01/17.
//  Copyright © 2017 playphone. All rights reserved.
//

import UIKit

class Scheduler : NSObject {
    
    typealias Action = () -> Void
    typealias EndCondition = () -> Bool
    
    var timer: Timer?
    var action: Action?
    var endCondition: EndCondition?
    
    func scheduleRepeatedly(_ action: @escaping Action, interval: TimeInterval, endCondition: @escaping EndCondition)  {
        guard timer == nil && interval > 0 else { return }
        self.action = action
        self.endCondition = endCondition
        timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(Scheduler.doAction(_:)), userInfo: nil, repeats: true)
    }
    
    func doAction(_ timer: Timer) {
        guard let action = action, let endCondition = endCondition, !endCondition() else {
            timer.invalidate()
            self.timer = nil
            self.action = nil
            self.endCondition = nil
            return
        }
        action()
    }
    
}

