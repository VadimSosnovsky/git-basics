//
//  ViewController.swift
//  sosnovskyApp
//
//  Created by Вадим Сосновский on 23.10.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!

    @IBOutlet weak var buttonIncrease: UIButton!
    
    @IBOutlet weak var buttonDecrease: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelResult.text = "\(count)"
    }
    
    
    var count: Int = 0 {
            didSet {
                
                labelResult.text = "\(count)"
            }
        }
    
    @IBAction func buttonIncreaseTap(_ sender: Any) {
        
        count = count + 1
        
        if count == 10 {
            
            buttonIncrease.isEnabled = false
            
            let alertcontroller = UIAlertController(title: "Вы достигли максимального значения", message: nil, preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default)
            
            alertcontroller.addAction(action)
            self.present(alertcontroller, animated: true, completion: nil)
        }
        
        if buttonDecrease.isEnabled == false && count > -10 {
            
            buttonDecrease.isEnabled = true
        }
    }
    

    @IBAction func buttonDecreaseTap(_ sender: Any) {
        
        count = count - 1
        
        if count == -10 {
            
            buttonDecrease.isEnabled = false
            
            let alertcontroller = UIAlertController(title: "Вы достигли минимального значения", message: nil, preferredStyle: .alert)
            
            let action = UIAlertAction(title: "OK", style: .default)

            alertcontroller.addAction(action)
            self.present(alertcontroller, animated: true, completion: nil)
        }
        
        if buttonIncrease.isEnabled == false && count < 10 {
            
            buttonIncrease.isEnabled = true
        }
    }
    
    @IBAction func buttonResetTap(_ sender: Any) {
        
        if count == 10 {
            
            buttonIncrease.isEnabled = true
        }
        else if count == -10 {
            
            buttonDecrease.isEnabled = true
        }
        
        count = 0
    }
}

