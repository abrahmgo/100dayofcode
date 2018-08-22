//
//  CustomAlertView.swift
//  customAlertView
//
//  Created by Andres Bonilla Gomez on 20/08/18.
//  Copyright © 2018 BeHere. All rights reserved.
//

import UIKit

class AlertView: UIView {

    @IBOutlet var customView: UIView!
    @IBOutlet weak var btnAceptar: UIButton!
  
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    @IBAction func actAceptar(_ sender: Any)
    {
        exit(0)
    }
    
    override init(frame: CGRect) { // for using CustomView in code
        super.init(frame: frame)
        custom()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        custom()
    }
    
    func custom()
    {
        //customView.backgroundColor = UIColor.white
        
        customView = loadViewfromNib()
        customView.frame = bounds
        customView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(customView)
    }
    
    func loadViewfromNib () -> UIView
    {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "AlertView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
}
