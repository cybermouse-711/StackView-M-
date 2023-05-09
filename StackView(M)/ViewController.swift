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
    
    let colorViews = ["allColor 0.3", "red 1.0", "yellow 1.0", "green 1.0"]
    var currentIColorIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateColor()
        
        redColorView.layer.cornerRadius = 50
        yellowColorView.layer.cornerRadius = 50
        greenColorView.layer.cornerRadius = 50
        changeColorButton.layer.cornerRadius = 10
        
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
       
    }
    
    func updateColor(){
        let colorView = colorViews[currentIColorIndex]
        
        switch colorView {
        case "red 1.0":
            redColorView.alpha = 1.0
        case "yellow 1.0":
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1.0
        case "green 1.0":
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1.0
        default:
            redColorView.alpha = 0.3
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 0.3
            changeColorButton.setTitle("START", for: .normal)
        }
    }
    
    @IBAction func changeColorButtonDidTapped() {
        changeColorButton.setTitle("NEXT", for: .normal)
        
        currentIColorIndex += 1
        if currentIColorIndex >= colorViews.count {
            currentIColorIndex = 0
        }
        updateColor()
    } 
    

}

