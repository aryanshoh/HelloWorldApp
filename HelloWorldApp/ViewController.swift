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
        greetingButton.configuration = setupButton(with: "Show greetings")
        greetingButton.layer.cornerRadius = 20
        
    }
    
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ?
            "Show greetings" :
                "Hide greetings"
        )
        
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show greetings" : "Hide greetings",
//            for: .normal
//        )
        
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.7095937133, green: 0, blue: 0, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
    

}

