//
//  ViewController2.swift
//  Tutorial 2
//
//  Created by Alexandra Radu on 09/01/2020.
//  Copyright © 2020 Alexandra Radu. All rights reserved.
//

import UIKit
import SafariServices
import WebKit

class ViewController2: UIViewController, SFSafariViewControllerDelegate {
    //MARK: - IBOutlets
    
    @IBOutlet  var label: UILabel!
    
    //MARK: - lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  //MARK: - IBActions
    @IBAction func backPagePress(_ sender : Any){
     self.performSegue(withIdentifier: "V1", sender: self)
 }
    
    @IBAction func nextPage3(_ sender: Any) {
        performSegue(withIdentifier: "V3", sender: self)
    }
    
        @IBAction func switchPressed(_ sender: UISwitch) {
        if sender.isOn {
            label.text = "On"
        } else {
            label.text = "Off"
        }
    }
   /*  @IBAction func didPressButton(_ sender: Any) {
        if let url = URL(string: "http://bing.com") {
            let safariVC = SFSafariViewController(url: url)
            safariVC.delegate = self
                present(safariVC, animated: true, completion: nil)
        }
    }
      */
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("finished!")
    }
        

      
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
