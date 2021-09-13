//
//  ViewController.swift
//  CafeCollections
//
//  Created by ELLA MADALINSKI on 9/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var storeItems : [String:Int] = ["Strawberries":5, "Bananas":4, "Blueberries":3, "Mangos":2, "Kiwis":1]
    var cart : [String:Int] = [:]
    var totalPrice = 0
    
    
    @IBOutlet weak var addItemTextFieldOutlet: UITextField!
    @IBOutlet weak var newItemNameAndPriceLabelOutlet: UILabel!
    @IBOutlet weak var totalPriceLabelOutlet: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func addItemButton(_ sender: UIButton) {
        
        
        if let item = addItemTextFieldOutlet.text {
            if item == "Strawberries"
            {
                cart[item] = 5
                newItemNameAndPriceLabelOutlet.text = "Strawberries, $5"
                totalPrice += 5
                totalPriceLabelOutlet.text = "$\(totalPrice)"
                
                print(cart)
            }
            else if item == "Bananas"
            {
                cart[item] = 4
                newItemNameAndPriceLabelOutlet.text = "Bananas, $4"
                totalPrice += 4
                totalPriceLabelOutlet.text = "$\(totalPrice)"
                
                print(cart)
            }
            else if item == "Blueberries"
            {
                cart[item] = 3
                newItemNameAndPriceLabelOutlet.text = "Blueberries, $3"
                totalPrice += 3
                totalPriceLabelOutlet.text = "$\(totalPrice)"
                
                print(cart)
            }
            else if item == "Mangos"
            {
                cart[item] = 2
                newItemNameAndPriceLabelOutlet.text = "Mangos, $2"
                totalPrice += 2
                totalPriceLabelOutlet.text = "$\(totalPrice)"
                
                print(cart)
            }
            else if item == "Kiwis"
            {
                cart[item] = 1
                newItemNameAndPriceLabelOutlet.text = "Kiwis, $1"
                totalPrice += 1
                totalPriceLabelOutlet.text = "$\(totalPrice)"
                
                print(cart)
            }
            else
            {
                newItemNameAndPriceLabelOutlet.text = "Item is not in cafe."
            }
        }
        else
        {
            newItemNameAndPriceLabelOutlet.text = "Not a valid entry"
        }
        
    }
    
    
}

