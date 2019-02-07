//
//  ViewController.swift
//  RockPaperScissorsApp
//
//  Created by Brandon Kim on 1/25/19.
//  Copyright © 2019 Brandon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yourChoice: UIImageView!
    @IBOutlet weak var computerChoice: UIImageView!
    @IBOutlet weak var rockImage: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet var pictures: [UIImageView]!
    @IBOutlet weak var paperView: UIImageView!
    @IBOutlet weak var ScissorsView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        computerChoice.image = UIImage(named:"Scissors")
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    
    @IBAction func PicturesTapped(_ sender: UITapGestureRecognizer) {
        
        let selectedPoint = sender.location(in: rockImage)
        let selectPoint = sender.location(in: paperView)
        let selectedDot = sender.location(in: ScissorsView)
        var Random:Int
        for Pick in pictures {
            
            if Pick.frame.contains(selectedPoint){
                yourChoice.image = UIImage(named: "Rock")
                Random = 1
            }; if Pick.frame.contains(selectPoint){
                yourChoice.image = UIImage(named:"Paper")
                Random = 2
            }; if Pick.frame.contains(selectedDot){
                yourChoice.image = UIImage(named:"Scissors")
                Random = 3
            }
        }
    

}
    
    @IBAction func startButton(_ sender: UIButton) {
        let array = [1,2,3]
        //if let is for "if a variable has a value, do the first line of code, and if the variable doesnt have a value, do the second line of code. Ex. if let num = randomNumber {This is the part if it has a value}
        var randomNumber = array.randomElement()
        var number = randomNumber!
        if number == 1{
            computerChoice.image = UIImage(named:"Rock")
        }; if number == 2{
            computerChoice.image = UIImage(named: "Paper")
        }; if number == 3 {
            computerChoice.image = UIImage(named:"Scissors")
        }
        // How it knows who wins
        var Random:Int = 2
        if yourChoice.image == UIImage(named: "Rock")
            && number == 2 {
            Random = 1
        }
        
        if yourChoice.image == UIImage(named: "Rock") && number == 3 {
            Random = 2
        }
        
        if yourChoice.image == UIImage(named: "Paper") && number == 1 {
            Random = 3
        }
        
        if yourChoice.image == UIImage(named: "Paper") && number == 3 {
            Random = 4
        }
        
        if yourChoice.image == UIImage(named: "Scissors") && number == 1 {
            Random = 5
        }
        
        if yourChoice.image == UIImage(named: "Scissors") && number == 2 {
            Random = 6
        }
        if yourChoice.image == UIImage(named: "Rock") && number == 1 {
            Random = 7
        }
        if yourChoice.image == UIImage(named: "Paper") && number == 2 {
            Random = 7
        }
        if yourChoice.image == UIImage(named: "Scissors") && number == 3 {
            Random = 7
        }
        
        
        
        
        
        
        
        switch Random {
        case 1:
            label.text = "You Lose"
        case 2:
            label.text = "You Win"
        case 3:
            label.text = "You Win"
        case 4:
            label.text = "You Lose"
        case 5:
            label.text = "You Lose"
        case 6:
            label.text = "You Win"
        case 7:
            label.text = "Tie!"
        default:
            label.text = "Default"
        }
    }
    
    
    
    
    
    

}
