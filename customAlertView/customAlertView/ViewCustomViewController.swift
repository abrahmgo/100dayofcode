//
//  ViewCustomViewController.swift
//  customAlertView
//
//  Created by Andres Bonilla Gomez  on 20/08/18.
//  Copyright © 2018 BeHere. All rights reserved.
//

import UIKit

class ViewCustomViewController: UIViewController {

    @IBOutlet weak var Custom: AlertView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Custom.btnAceptar.layer.cornerRadius = 25
        Custom.btnAceptar.backgroundColor = UIColor(red: 4/255, green: 47/255, blue: 112/255, alpha: 1)
        Custom.btnAceptar.setTitleColor(UIColor.white, for: .normal)
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
