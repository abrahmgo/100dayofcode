//
//  ViewController.swift
//  spinnerCustom
//
//  Created by ANZEN DIGITAL on 08/08/18.
//  Copyright © 2018 BeHere. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let rosetaGIF = UIImage(named: "wheel.png")
        let ind = MyIndicator(frame: CGRect(x: 0, y: 0, width: (rosetaGIF?.size.width)!/2, height: (rosetaGIF?.size.height)!/2), image: rosetaGIF!)
        view.addSubview(ind)
        view.alpha = 0.5
        ind.startAnimating()
        print("begins the custom activity indicator")
        DispatchQueue.main.asyncAfter(deadline: .now() + 5)
        {
            ind.stopAnimating()
            print("stop the activity indicator")
            self.view.alpha = 1
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

