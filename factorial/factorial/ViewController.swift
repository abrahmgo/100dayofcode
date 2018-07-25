//
//  ViewController.swift
//  factorial
//
//  Created by Andres Abraham Bonilla Gòmez on 24/07/18.
//  Copyright © 2018 beHere. All rights reserved.
//

import UIKit
import BigInt

class ViewController: UIViewController {

    var classFactor = factorial()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // MAIN
        let lados: Int = 20
        var rutasPosbiles: BigInt = 0
        rutasPosbiles = (classFactor.daFactorial(lados+lados))/(classFactor.daFactorial(lados)*classFactor.daFactorial(lados))
        
        print("Rutas posbiles para cuadro de \(lados) lados son: \(rutasPosbiles)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

