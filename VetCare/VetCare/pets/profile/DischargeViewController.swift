//
//  DischargeViewController.swift
//  VetCare
//
//  Created by Raquel Ramos on 05/05/2018.
//  Copyright © 2018 raquelramos. All rights reserved.
//

import UIKit

class DischargeViewController: UIViewController {
    
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var veterinarian: UITextField!
    @IBOutlet weak var observations: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
