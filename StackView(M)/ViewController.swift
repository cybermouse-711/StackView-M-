//
//  ViewController.swift
//  StackView(M)
//
//  Created by Елизавета Медведева on 08.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var greenColorView: UIView!
    
    
    @IBOutlet var changeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.layer.cornerRadius = 50
        yellowColorView.layer.cornerRadius = 50
        greenColorView.layer.cornerRadius = 50
        changeColorButton.layer.cornerRadius = 10
        
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
       
    }

    
    @IBAction func changeColorButtonDidTapped() {
        redColorView.alpha = 1.0
    }
    

}

