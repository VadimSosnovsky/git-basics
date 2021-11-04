//
//  ViewControllerInfo.swift
//  quizApp
//
//  Created by Вадим Сосновский on 27.10.2021.
//

import UIKit

class ViewControllerInfo: UIViewController {

    @IBOutlet weak private var sliderAge: UISlider!
    @IBOutlet weak private var labelAge: UILabel!
    @IBOutlet weak private var textFieldName: UITextField!
    
    let step: Float = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelAge.text = "7"
        User.age = 7
        User.name = "Unknown"
    }

    @IBAction func sliderAgeChanged(_ sender: Any) {
        
        labelAge.text = "\(String(format: "%g", round(sliderAge.value / step) * step))"
        
        User.name = textFieldName.text!
        User.age = Int(labelAge.text ?? "Unknown")!
    }
    
    @IBAction func textFieldNameChanged(_ sender: Any) {
        User.name = textFieldName.text!
    }
    
}
