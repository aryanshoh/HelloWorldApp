//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by anonim on 29/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show greetings" : "Hide greetings",
            for: .normal
        )
        
    }
    
    

}

