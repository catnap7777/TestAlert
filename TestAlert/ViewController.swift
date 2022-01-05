//
//  ViewController.swift
//  TestAlert
//
//  Created by Karen Mathes on 1/5/22.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        //.. testing from mch - just preferredType: .alert
    }

    @IBAction func buttonPressed(_ sender: Any) {
        showAlert()
    }
    
    func showAlert() {

        let alert3 = UIAlertController(title: "Testing Alert", message: "This is a test alert with buttons", preferredStyle: .alert)

        let okAction3 = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            print("ok Kar")
        })
        
        let cancelAction3 = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("cancel")
        }
        
        let segueAction3 = UIAlertAction(title: "Segue?", style: .default) { (action) in
            print("segue")
            self.performSegue(withIdentifier: "kamSegue", sender: self)
        }

        alert3.addAction(okAction3)
        alert3.addAction(cancelAction3)
        alert3.addAction(segueAction3)
        alert3.view.backgroundColor = UIColor.init(red: 200.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        self.present(alert3, animated: true , completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController2
    }
    
}

