

// Created on: Sept-2018
// Created by: Amin Zeina
// Created for: ICS3U
// This program will display hello world in different languages 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel: UILabel = UILabel()
    let englishButton : UIButton = UIButton()
    let italianButton : UIButton = UIButton()
    let frenchButton : UIButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        englishButton.setTitle("English", for: UIControlState.normal)
        englishButton.setTitleColor(.blue, for: .normal)
        englishButton.addTarget(self, action: #selector(showEnglish), for: .touchUpInside)
        view.addSubview(englishButton)
        englishButton.translatesAutoresizingMaskIntoConstraints = false
        englishButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        englishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        frenchButton.setTitle("French", for: UIControlState.normal)
        frenchButton.setTitleColor(.blue, for: .normal)
        frenchButton.addTarget(self, action: #selector(showFrench), for: .touchUpInside)
        view.addSubview(frenchButton)
        frenchButton.translatesAutoresizingMaskIntoConstraints = false
        frenchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        frenchButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        italianButton.setTitle("Italian", for: UIControlState.normal)
        italianButton.setTitleColor(.blue, for: .normal)
        italianButton.addTarget(self, action: #selector(showItalian), for: .touchUpInside)
        view.addSubview(italianButton)
        italianButton.translatesAutoresizingMaskIntoConstraints = false
        italianButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        italianButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    }
    
    @objc func showEnglish() {
        // show Hello, World!
        helloWorldLabel.text = "Hello, World!"
    }
    
    @objc func showFrench() {
        // show Hello, World!
        helloWorldLabel.text = "Bonjour Monde!"
    }
    @objc func showItalian() {
        // show Hello, World!
        helloWorldLabel.text = "Ciao Mondo!"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
