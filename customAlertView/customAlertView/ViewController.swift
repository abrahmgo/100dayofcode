//
//  ViewController.swift
//  customAlertView
//
//  Created by Andres Bonilla Gomez on 20/08/18.
//  Copyright © 2018 BeHere. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var contentAlertView: UIView!
    @IBOutlet weak var btnAceptar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBack()
        initAlert()
        contentAlertView.isHidden = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initAlert()
    {
        contentAlertView.backgroundColor = UIColor.white
        btnAceptar.layer.cornerRadius = 25
        btnAceptar.backgroundColor = UIColor(red: 4/255, green: 47/255, blue: 112/255, alpha: 1)
        btnAceptar.setTitleColor(UIColor.white, for: .normal)
    }

    func initBack()
    {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "back_t.jpg")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
}

