//
//  ViewControllerDogResult.swift
//  quizApp
//
//  Created by Вадим Сосновский on 30.10.2021.
//

import UIKit

class ViewControllerDogResult: UIViewController {
    
    
    @IBOutlet private weak var labelName: UILabel!
    @IBOutlet private weak var labelAge: UILabel!
    @IBOutlet private weak var labelBreed: UILabel!
    @IBOutlet private weak var imageViewDog: UIImageView!
    
    var counter = 0
    
    var imgDogFirst: UIImage = UIImage(named: "dogFirst")!
    var imgDogSecond: UIImage = UIImage(named: "dogSecond")!
    var imgDogThird: UIImage = UIImage(named: "dogThird")!
    
    var dogs: [String] = ["Доберман", "Сиба-ину", "Пагль"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = "Имя: \(User.name)"
        labelAge.text = "Возраст: \(User.age)"
        
        switch counter {
        case 0...3:
            labelBreed.text = "Порода: \(dogs[0])"
            imageViewDog.image = imgDogFirst
        case 3...6:
            labelBreed.text = "Порода: \(dogs[1])"
            imageViewDog.image = imgDogSecond
        case 6...9:
            labelBreed.text = "Порода: \(dogs[2])"
            imageViewDog.image = imgDogThird
        default:
            print("default")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
