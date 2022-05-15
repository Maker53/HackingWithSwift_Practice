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
    
    private let titleView: UIView = {
        UIView(frame: CGRect(x: 0, y: 0, width: 110, height: 30))
    }()
    private let scoreLabel: UILabel = {
        UILabel(frame: CGRect(x: 0, y: 0, width: 70, height: 30))
    }()
    private let correctFlag: UIImageView = {
        UIImageView(frame: CGRect(x: 80, y: 0, width: 40, height: 30))
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        countries = [
            "estonia", "france", "germany", "ireland", "italy", "monaco",
            "nigeria", "poland", "russia", "spain", "uk", "us"
        ]
        
        titleView.addSubview(scoreLabel)
        titleView.addSubview(correctFlag)
        
        navigationItem.titleView = titleView
        
        askQuestion()
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        
        button1.setImage(.init(named: countries[0]), for: .normal)
        button2.setImage(.init(named: countries[1]), for: .normal)
        button3.setImage(.init(named: countries[2]), for: .normal)
        
        correctAnswer = Int.random(in: 0...2)
        
        scoreLabel.text = "Score: \(score)"
        correctFlag.image = UIImage(named: countries[correctAnswer])
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let alertController = UIAlertController(
            title: title,
            message: "Your score \(score)",
            preferredStyle: .alert
        )
        alertController.addAction(.init(title: "Continue", style: .default, handler: askQuestion))
        present(alertController, animated: true)
    }
}
