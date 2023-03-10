//
//  ViewController.swift
//  IntroduceStudents
//
//  Created by zhaos on 12/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    //add festure
   
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .systemCyan
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
        
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
       
    }
    
    
    @IBAction func moreAboutMe(_ sender: UIButton) {
        
        let moreIntro = "I come from \(countryTextField.text!) and I like \(hobbyTextField.text!)."
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "More about me", message: moreIntro, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Glad to know you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func changeColorBlue(_ sender: UIButton) {
        view.backgroundColor = .systemBlue
    }
    
    @IBAction func changeColorYellow(_ sender: UIButton) {
        view.backgroundColor = .yellow
    }
    
    @IBAction func changeColorOrange(_ sender: UIButton) {
        view.backgroundColor = .orange
    }
    
    
    @IBAction func goBackColor(_ sender: UIButton) {
        view.backgroundColor = .white
    }
}

