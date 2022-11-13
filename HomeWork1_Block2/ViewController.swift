//
//  ViewController.swift
//  HomeWork1_Block2
//
//  Created by Ekaterina Livinska on 12.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var controlButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        redLight.layer.cornerRadius = 42
        yellowLight.layer.cornerRadius = 42
        greenLight.layer.cornerRadius = 42
        controlButton.layer.cornerRadius = 10
    }
    
    @IBAction func toggleLights(_ sender: Any) {
        if redLight.alpha < 1 && yellowLight.alpha < 1 {
            redLight.alpha = 1
            controlButton.setTitle("NEXT", for: .normal)
            greenLight.alpha = 0.3
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        }
    }
    
}
