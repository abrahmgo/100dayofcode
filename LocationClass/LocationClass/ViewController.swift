//
//  ViewController.swift
//  LocationClass
//
//  Created by Andrés Bonilla Gómez on 13/08/18.
//  Copyright © 2018 BeHere. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, LocationServiceDelegate
{
    @IBOutlet weak var labelCity: UILabel!
    func tracingLocation(_ currentLocation: CLLocation)
    {
        LocationService.sharedInstance.getNameCity(currentLocation:  LocationService.sharedInstance.currentLocation!)
        print(LocationService.sharedInstance.nameCity)
        labelCity.text = LocationService.sharedInstance.nameCity
    }
    func tracingLocationDidFailWithError(_ error: NSError)
    {
        let alertController = UIAlertController(title: "Activa la localización", message: "así podremos brindarte un mejor servicio", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        UIApplication.shared.keyWindow?.rootViewController?.present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LocationService.sharedInstance.delegate = self
        LocationService.sharedInstance.startUpdatingLocation()
       
        labelCity.text = LocationService.sharedInstance.nameCity
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

