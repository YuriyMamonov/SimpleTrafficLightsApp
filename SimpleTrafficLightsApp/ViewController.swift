//
//  ViewController.swift
//  SimpleTrafficLightsApp
//
//  Created by Юрий Мамонов on 11.02.2020.
//  Copyright © 2020 Yuriy Mamonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redViewOutlet: UIView!
    @IBOutlet var yellowViewOutlet: UIView!
    @IBOutlet var greenViewOutlet: UIView!
    
    @IBOutlet var actionButtonOutlet: UIButton!
    
    let brightest: CGFloat = 1
    let dark: CGFloat = 0.3
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redViewOutlet.alpha = dark
        yellowViewOutlet.alpha = dark
        greenViewOutlet.alpha = dark
        
        redViewOutlet.layer.cornerRadius =  redViewOutlet.frame.width / 2
        yellowViewOutlet.layer.cornerRadius = yellowViewOutlet.frame.width / 2
        greenViewOutlet.layer.cornerRadius = greenViewOutlet.frame.width / 2
        
        actionButtonOutlet.setTitle("START", for: .normal)
    }
    
    @IBAction func actionButton(_ sender: Any) {
        actionButtonOutlet.setTitle("NEXT", for: .normal)
        
        switch count {
        case 0:
            redViewOutlet.alpha = brightest
            greenViewOutlet.alpha = dark
            count = 1
        case 1:
            yellowViewOutlet.alpha = brightest
            redViewOutlet.alpha = dark
            count = 2
        case 2:
            yellowViewOutlet.alpha = dark
            greenViewOutlet.alpha = brightest
            count = 0
        default:
            break
        }
    }
}























