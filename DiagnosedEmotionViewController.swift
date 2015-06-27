//
//  DiagnosedEmotionViewController.swift
//  Psychologist
//
//  Created by Zheng Hao Tan on 6/27/15.
//  Copyright (c) 2015 Zheng Hao Tan. All rights reserved.
//

import UIKit

class DiagnosedEmotionViewController : EmotionViewController {
    
    var diagnosticHistory = [Int]()
    
    override var happiness: Int {
        didSet {
            diagnosticHistory += [happiness]
        }
    }
    private struct History {
        static let SegueIdentifier = "Show Diagnostic History"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
            case History.SegueIdentifier:
                if let tvc = segue.destinationViewController as? TextViewController {
                    tvc.text = "\(diagnosticHistory)"
                }
            default : break
            }
        }
    }
}
