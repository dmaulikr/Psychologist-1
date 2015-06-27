//
//  ViewController.swift
//  Psychologist
//
//  Created by Zheng Hao Tan on 6/27/15.
//  Copyright (c) 2015 Zheng Hao Tan. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let hvc = segue.destinationViewController as? EmotionViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "sad": hvc.happiness = 0
                    case "happy": hvc.happiness = 100
                    default: hvc.happiness = 50
                }
            }
        }
    }

}

