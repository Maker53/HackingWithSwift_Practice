//
//  DetailViewController.swift
//  Project_7_Whitehouse_Petitions
//
//  Created by Станислав on 20.05.2022.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
