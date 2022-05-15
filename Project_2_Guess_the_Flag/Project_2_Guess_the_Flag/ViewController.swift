//
//  ViewController.swift
//  Project_2_Guess_the_Flag
//
//  Created by Станислав on 15.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var correctAnswer = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        countries = [
            "estonia", "france", "germany", "ireland", "italy", "monaco",
            "nigeria", "poland", "russia", "spain", "uk", "us"
        ]
        countries.shuffle()
        
        askQuestion()
    }
    
    func askQuestion() {
        button1.setImage(.init(named: countries[0]), for: .normal)
        button2.setImage(.init(named: countries[1]), for: .normal)
        button3.setImage(.init(named: countries[2]), for: .normal)
        
        correctAnswer = Int.random(in: 0...2)
        
        title = countries[correctAnswer].uppercased()
    }
}
