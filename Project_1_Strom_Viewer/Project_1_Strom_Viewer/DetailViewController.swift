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
    var pictureNumber: (position: Int, count: Int)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pictureNumber = pictureNumber {
            title = "Picture \(pictureNumber.position) of \(pictureNumber.count)"
        }
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = .init(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }
}
