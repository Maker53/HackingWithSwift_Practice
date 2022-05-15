//
//  DetailViewController.swift
//  Project_1_Strom_Viewer
//
//  Created by Станислав on 15.05.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage {
            imageView.image = .init(named: imageToLoad)
            print("success")
        }
    }
}
