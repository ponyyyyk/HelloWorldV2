//
//  ViewController.swift
//  HelloWorldV2
//
//  Created by Василий Шумаков on 17.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with:  greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        buttonConfiguration.cornerStyle = .capsule
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}

