//
//  ViewController.swift
//  webViewPlayground
//
//  Created by Alberto on 14/11/2018.
//  Copyright © 2018 Alberto. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var webView: WKWebView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://albertogiambone.github.io/prezzomerciagricoltura/")
        let urlRequest = URLRequest(url: url!)
        
        webView.load(urlRequest)
        
    }


    @IBAction func indietro(_ sender: UIButton) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        backButton.isEnabled = webView.canGoBack
    }
    
}

