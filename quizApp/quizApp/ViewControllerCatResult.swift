//
//  ViewControllerCatResult.swift
//  quizApp
//
//  Created by Вадим Сосновский on 30.10.2021.
//

import UIKit

class ViewControllerCatResult: UIViewController {
    
    @IBOutlet private weak var labelName: UILabel!
    @IBOutlet private weak var labelAge: UILabel!
    @IBOutlet private weak var labelBreed: UILabel!
    @IBOutlet private weak var imageViewCat: UIImageView!
    
    var counter = 0
    
    let stringnumber = "12"
    
    var imgCatFirst: UIImage = UIImage(named: "catFirst")!
    var imgCatSecond: UIImage = UIImage(named: "catSecond")!
    var imgCatThird: UIImage = UIImage(named: "catThird")!
    
    var cats: [String] = ["Бенгалськая кошка", "Персидская кошка", "Рэгдолл"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = "Имя: \(User.name)"
        labelAge.text = "Возраст: \(User.age)"
        
        switch counter {
        case 0...3:
            labelBreed.text = "Порода: \(cats[0])"
            imageViewCat.image = imgCatFirst
        case 3...6:
            labelBreed.text = "Порода: \(cats[1])"
            imageViewCat.image = imgCatSecond
        case 6...9:
            labelBreed.text = "Порода: \(cats[2])"
            imageViewCat.image = imgCatThird
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
