//
//  ViewController.swift
//  Tutorial 2
//
//  Created by Alexandra Radu on 09/01/2020.
//  Copyright © 2020 Alexandra Radu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    //MARK: - lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    // MARK: - IBActions
    @IBAction func didPressButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert Title", message: "Alert Messege", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            print("all done")
        }
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func ndButton(_ sender: Any) {
        let activityView = UIActivityViewController(activityItems: ["Data From My App kdhdiufjchjhvbkj"], applicationActivities: nil)
        present(activityView, animated: true, completion: nil)
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        self.progressView.progress = sender.value
        if progressView.progress >= 0 {
            activityIndicator.stopAnimating()
        } else {
            activityIndicator.startAnimating()
        }
    }
    
    @IBAction func nextPagePress(_ sender : Any){
        self.performSegue(withIdentifier: "V2", sender: self)
    }
}

