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
    var storeItemsString = "Strawberries, Bananas, Blueberries, Mangos, Kiwis"
    var cartItemsString = ""
    
    
    @IBOutlet weak var addItemTextFieldOutlet: UITextField!
    @IBOutlet weak var newItemNameAndPriceLabelOutlet: UILabel!
    @IBOutlet weak var totalPriceLabelOutlet: UILabel!
    @IBOutlet weak var passwordTextFieldOutlet: UITextField!
    @IBOutlet weak var addNewItemTextFieldOutlet: UITextField!
    @IBOutlet weak var addNewItemPriceTextFieldOutlet: UITextField!
    @IBOutlet weak var adminOutcomeLabelOutlet: UILabel!
    @IBOutlet weak var deleteItemTextFieldOutlet: UITextField!
    @IBOutlet weak var viewItemsInStoreTextViewOutlet: UITextView!
    @IBOutlet weak var viewItemsInCartTextViewOutlet: UITextView!
    

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
                if(cartItemsString) == ""
                {
                    cartItemsString = "\(item)"
                }
                else
                {
                    cartItemsString = "\(cartItemsString), \(item)"
                }
//                addItemTextFieldOutlet.resignFirstResponder()
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
                            storeItemsString = "\(storeItemsString), \(addItem)"
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
//        addNewItemTextFieldOutlet.resignFirstResponder()
//        addNewItemPriceTextFieldOutlet.resignFirstResponder()
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
    
    @IBAction func viewItemsInStoreButtonAction(_ sender: UIButton) {
        viewItemsInStoreTextViewOutlet.text = storeItemsString
        print("hi")
    }
    
    @IBAction func viewItemsInCartButtonAction(_ sender: UIButton) {
        viewItemsInCartTextViewOutlet.text = cartItemsString
    }
    
}
