//
//  ViewController.swift
//  TrafficLight
//
//  Created by Dmitry on 25.02.2020.
//  Copyright © 2020 Dmitry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var actionButton: UIButton!
    
    @IBOutlet var trafficLights: [UIView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    @IBAction func startButtonTapped(_ sender: UIButton) {
        switch CGFloat(1.0) {
        case redLight.alpha:
            setUp()
            yellowLight.alpha = CGFloat(1.0)
        case yellowLight.alpha:
            setUp()
            greenLight.alpha = CGFloat(1.0)
        case greenLight.alpha:
            setUp()
            redLight.alpha = CGFloat(1.0)
            
        default:
            redLight.alpha = CGFloat(1.0)
        }
        actionButton.setTitle("NEXT", for:  .normal)
    }
    
    private func setUp() {
        for light in trafficLights {
            light.layer.cornerRadius = light.frame.size.width / 2
            light.alpha = CGFloat(0.3)
        }
    }
}

