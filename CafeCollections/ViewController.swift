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
    @IBOutlet weak var passwordTextFieldOutlet: UITextField!
    @IBOutlet weak var addNewItemTextFieldOutlet: UITextField!
    @IBOutlet weak var addNewItemPriceTextFieldOutlet: UITextField!
    @IBOutlet weak var adminOutcomeLabelOutlet: UILabel!
    @IBOutlet weak var deleteItemTextFieldOutlet: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    @IBAction func addItemButton(_ sender: UIButton) {
        
        
        if let item = addItemTextFieldOutlet.text {
            
            if let itemPrice = storeItems[item]
            {
            cart[item] = itemPrice
            newItemNameAndPriceLabelOutlet.text = "\(item), $\(itemPrice)"
            totalPrice += itemPrice
            totalPriceLabelOutlet.text = "$\(totalPrice)"
            }
            else
            {
                newItemNameAndPriceLabelOutlet.text = "Item is not in cafe."
            }
        }
        else
        {
            newItemNameAndPriceLabelOutlet.text = "Item is not in cafe."
        }
        
    }
    
    @IBAction func enterButtonAction(_ sender: UIButton) {
        if let pass = passwordTextFieldOutlet.text
        {
            if pass == "Yessir"
            {
                if let addItem = addNewItemTextFieldOutlet.text
                {
                    if let addItemPriceString = addNewItemPriceTextFieldOutlet.text {
                        if let addItemPrice = Int(addItemPriceString)
                        {
                            storeItems[addItem] = addItemPrice
                            adminOutcomeLabelOutlet.text = "Item added to cafe"
                        }
                        else
                        {
                            adminOutcomeLabelOutlet.text = "Item price not valid"
                        }
                    }
                    else
                    {
                        adminOutcomeLabelOutlet.text = "Item price not valid"
                    }
                }
                else
                {
                    adminOutcomeLabelOutlet.text = "Item name not valid"
                }
            }
            else
            {
                adminOutcomeLabelOutlet.text = "Wrong password"
            }
        }
        else
        {
            adminOutcomeLabelOutlet.text = "Password not valid"
        }
    }
    
    
    @IBAction func smallEnterButtonAction(_ sender: UIButton) {
        if let pass = passwordTextFieldOutlet.text
        {
            if pass == "Yessir"{
                if let deleteItem = deleteItemTextFieldOutlet.text
                {
                    storeItems[deleteItem] = nil
                    adminOutcomeLabelOutlet.text = "Item removed from cafe"
                }
                else{
                    adminOutcomeLabelOutlet.text = "Item not valid"
                }
            }
            else
            {
                adminOutcomeLabelOutlet.text = "Wrong password"
            }
        }
        else
        {
            adminOutcomeLabelOutlet.text = "Password not valid"
        }
    }
    
}
