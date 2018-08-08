//
//  ViewController.swift
//  holamundo_Alamofire
//
//  Created by Andres Abraham Bonilla Gòmez on 20/07/18.
//  Copyright © 2018 beHere. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    

    @IBOutlet weak var tableview: UITableView!
    
    var jsonArray: NSArray?
    var nameArray: Array<String> = []
    var imageURLArray: Array<String> = []
    
    override func viewDidLoad() {
        tableview.delegate = self
        tableview.dataSource = self
        super.viewDidLoad()
        downloadDataFromAPI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaPokemon", for: indexPath) as! CeldaTableViewCell
        cell.nombrePokemon.text = self.nameArray[indexPath.row]
        let url = URL(string: self.imageURLArray[indexPath.row])
        cell.imagenPokemon.af_setImage(withURL: url!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
    {
        let bounds = UIScreen.main.bounds
        let height = bounds.size.height
        
        return height/3
    }
    
    
    func downloadDataFromAPI()
    {
        //1.
        Alamofire.request("http://private-6c6430-ejemploalamofire.apiary-mock.com/pokemonList") .responseJSON { response in
            //2.
            if let JSON = response.result.value{
                //3.
                print(JSON)
                self.jsonArray = JSON as? NSArray
                //4.
                for item in self.jsonArray! as! [NSDictionary]{
                    //5.
                    let name = item["name"] as? String
                    let imageURL = item["image"] as? String
                    self.nameArray.append((name)!)
                    self.imageURLArray.append((imageURL)!)
                }
                //6.
                self.tableview.reloadData()
                
            }
        }
    }
}

