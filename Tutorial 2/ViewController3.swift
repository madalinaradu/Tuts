//
//  ViewController3.swift
//  Tutorial 2
//
//  Created by Alexandra Radu on 10/01/2020.
//  Copyright © 2020 Alexandra Radu. All rights reserved.
//

import UIKit
import WebKit
class ViewController3: UIViewController, UITextFieldDelegate {
    @IBOutlet var webView: WKWebView!
    @IBOutlet var textField: UITextField!
    
// MARK: - licecycle methods
    
     override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        if let urll =  URL(string: "http://bing.com") {
            webView.load(URLRequest(url: urll))
        }
    }
      //MARK: - IBActions
    
    @IBAction func backButton(_ sender: Any) {
        webView.goBack()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let urll =  URL(string: textField.text ?? "") {
            webView.load(URLRequest(url: urll))
        }
        return false
    
        // Do any additional setup after loading the view.
  
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
}
