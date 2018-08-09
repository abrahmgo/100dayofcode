//
//  ViewController.swift
//  animateImages
//
//  Created by ANZEN DIGITAL on 07/08/18.
//  Copyright © 2018 BeHere. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    let imgRoseta = UIImageView(image: UIImage(named: "wheel"))
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        putAnimationIntro()
        //you can modify the numner 1 if you want to more delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1)
        {
            self.moveImages(pixels: 3.8, timeMove: 0.8, rorl: true)
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /// put the image, resize and put the position in the view, the image should be in Assets.xcassets
    func putAnimationIntro()
    {
        
        imgRoseta.frame = CGRect(x: 0, y: 0, width: UIImage(named: "wheel")!.size.width/5, height: UIImage(named: "wheel")!.size.height/5)
        imgRoseta.center = CGPoint(x: (self.view.frame.width/2), y: self.view.frame.size.height/2)
        rotateAnimation(imageView: imgRoseta, duration: 2.0,flag:false)
        self.view.addSubview(imgRoseta)
    }
    
    /// rotate any image
    ///
    /// - Parameters:
    ///   - imageView: the image to rotate
    ///   - duration: how much delay
    ///   - flag: if you want yo stop the image send true
    func rotateAnimation(imageView:UIImageView,duration: CFTimeInterval, flag: Bool)
    {
        if flag
        {
            let transform = imageView.layer.presentation()?.transform
            imageView.layer.transform = transform!
            imageView.layer.removeAnimation(forKey: "rotateAnimation")
        }
        else
        {
            let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotateAnimation.fromValue = 0.0
            rotateAnimation.toValue = CGFloat(.pi * 2.0)
            rotateAnimation.duration = duration
            rotateAnimation.repeatCount = Float.greatestFiniteMagnitude;
            imageView.layer.add(rotateAnimation, forKey: "rotateAnimation")
        }
    }

    
    /// move the image to right or left
    ///
    /// - Parameters:
    ///   - pixels: how much pixels you want to move
    ///   - timeMove: time to delay
    ///   - rorl: true move to right, false move to left
    func moveImages(pixels: CGFloat, timeMove: Double, rorl: Bool)
    {
        UIView.animate(withDuration: timeMove, animations:
            {
                if rorl
                {
                    self.imgRoseta.frame.origin.x += self.view.frame.width / pixels
                }
                else
                {
                    self.imgRoseta.frame.origin.x -= self.view.frame.width / pixels
                }
        }) { (finished: Bool) in
            self.rotateAnimation(imageView: self.imgRoseta, duration: 0,flag: true)
            print("the animation is ended, you can do whatever")
        }
    }

}

