//
//  ViewControllerDogQuestionSecond.swift
//  quizApp
//
//  Created by Вадим Сосновский on 30.10.2021.
//

import UIKit

class ViewControllerDogQuestionSecond: UIViewController {

    @IBOutlet private weak var buttonFirst: UIButton!
    @IBOutlet private weak var buttonSecond: UIButton!
    @IBOutlet private weak var buttonThird: UIButton!
    
    var imgBefore: UIImage = UIImage(named: "circle-outline")!
    var imgAfter: UIImage = UIImage(named: "radio-on-button")!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonFirst.tintColor = .clear
        buttonSecond.tintColor = .clear
        buttonThird.tintColor = .clear
    }

    func setImage() {
        buttonFirst.setImage(imgBefore, for: .normal)
        buttonSecond.setImage(imgBefore, for: .normal)
        buttonThird.setImage(imgBefore, for: .normal)
    }
    
    @IBAction func buttonFirstTap(_ sender: Any) {
        if buttonFirst.isSelected {
            buttonFirst.isSelected = false
            buttonSecond.isSelected = false
            buttonThird.isSelected = false
            setImage()
        }
        else {
            buttonFirst.isSelected = true
            buttonSecond.isSelected = false
            buttonThird.isSelected = false
            buttonFirst.setImage(imgAfter, for: .normal)
            buttonSecond.setImage(imgBefore, for: .normal)
            buttonThird.setImage(imgBefore, for: .normal)
        }
    }
    
    @IBAction func buttonSecondTap(_ sender: Any) {
        if buttonSecond.isSelected {
            buttonSecond.isSelected = false
            buttonFirst.isSelected = false
            buttonThird.isSelected = false
            setImage()
        }
        else {
            buttonSecond.isSelected = true
            buttonFirst.isSelected = false
            buttonThird.isSelected = false
            buttonSecond.setImage(imgAfter, for: .normal)
            buttonFirst.setImage(imgBefore, for: .normal)
            buttonThird.setImage(imgBefore, for: .normal)
        }
    }
    
    @IBAction func buttonThirdTap(_ sender: Any) {
        if buttonThird.isSelected {
            buttonThird.isSelected = false
            buttonFirst.isSelected = false
            buttonSecond.isSelected = false
            setImage()
        }
        else {
            buttonThird.isSelected = true
            buttonFirst.isSelected = false
            buttonSecond.isSelected = false
            buttonThird.setImage(imgAfter, for: .normal)
            buttonFirst.setImage(imgBefore, for: .normal)
            buttonSecond.setImage(imgBefore, for: .normal)
        }
    }
    

    @IBAction func buttonNextTap(_ sender: Any) {
        if buttonFirst.isSelected {
            counter = counter + 1
        }
        else if buttonSecond.isSelected {
            counter = counter + 2
        }
        else if buttonThird.isSelected {
            counter = counter + 3
        }
        else {
            counter = counter + 0
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "destDogQuestThirdVC" {
            if let destVC = segue.destination as? ViewControllerDogQuestionThird{
                destVC.counter = counter
            }
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
