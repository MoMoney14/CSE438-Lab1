//
//  ViewController.swift
//  MahotoSasaki-Lab1
//
//  Created by Mahoto Sasaki on 9/11/20.
//  Copyright © 2020 mo3aru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var shoppingOne:ShoppingCalculator?
    var taxData:SalesTax?
    
    @IBOutlet weak var originalPriceTextField: UITextField!
    @IBOutlet weak var discountPercentageTextField: UITextField!
    @IBOutlet weak var salesTaxPercentageTextField: UITextField!
    @IBOutlet weak var finalPriceTextField: UILabel?
    

    @IBOutlet weak var statePickerViewButtonStackView: UIStackView!
    @IBOutlet weak var statePickerView: UIPickerView!
    var statePickerViewData = [String]()
    var statePickerViewHidden = true
    var associatedSalesTaxPercentage:Double = 0
    @IBOutlet weak var statePickerViewDoneButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shoppingOne = ShoppingCalculator()
        taxData = SalesTax()
        if let taxData = taxData {
            for (state, _) in taxData.tax {
                statePickerViewData.append(state)
            }
            statePickerViewData.sort()
        }

        finalPriceTextField?.text = "$0.00"
        
        //https://codewithchris.com/uipickerview-example/
        statePickerView.delegate = self
        statePickerView.dataSource = self
    }

    @IBAction func typingOriginalPrice(_ sender: UITextField) {
        var originalPrice = Double(sender.text ?? "0") ?? 0
        if originalPrice < 0 {
            originalPrice = 0
        } else if originalPrice > 1000000000 {
            originalPrice = 0
            sender.text = ""
        }
        shoppingOne?.originalPrice = originalPrice
        updateFinalPrice()
    }
    
    @IBAction func typingDiscountPercentage(_ sender: UITextField) {
        var discountPercentage = Double(sender.text ?? "0") ?? 0
        print(discountPercentage)
        if discountPercentage < 0 {
            discountPercentage = 0
        } else if discountPercentage > 100 {
            discountPercentage = 0
            sender.text = ""
        }
        shoppingOne?.discountPercentage = discountPercentage
        updateFinalPrice()
    }
    
    @IBAction func typingSalesTaxPercentage(_ sender: UITextField) {
        var salesTaxPercentage = Double(sender.text ?? "0") ?? 0
        if salesTaxPercentage < 0 {
            salesTaxPercentage = 0
        } else if salesTaxPercentage > 100 {
            salesTaxPercentage = 0
            sender.text = ""
        }
        shoppingOne?.salesTaxPercentage = salesTaxPercentage
        updateFinalPrice()
    }
    
    func updateFinalPrice() {
        let finalPrice:Double = shoppingOne?.calculateFinalPrice() ?? 0
        finalPriceTextField?.text = "$\(String(format: "%.2f", finalPrice))"
    }
        
    @IBAction func originalPriceTextFieldPressed(_ sender: UITextField) {
        hideStatePickerView()
    }
    
    @IBAction func discountPercentageTextFieldPressed(_ sender: UITextField) {
        hideStatePickerView()
    }
    @IBAction func salesTaxPercentageTextFieldPressed(_ sender: UITextField) {
        hideStatePickerView()
    }
    
    @IBAction func selectStateButtonPressed(_ sender: UIButton) {
        if statePickerViewHidden {
            statePickerViewHidden = false
            statePickerViewButtonStackView.isHidden = false
            originalPriceTextField.endEditing(true)
            discountPercentageTextField.endEditing(true)
            salesTaxPercentageTextField.endEditing(true)
        }
    }
    
    @IBAction func pickerViewDoneButtonPressed(_ sender: UIButton) {
                statePickerViewHidden = true
                statePickerViewButtonStackView.isHidden = true
    }
    
    func hideStatePickerView(){
        if !statePickerViewHidden {
            statePickerViewHidden = true
            statePickerViewButtonStackView.isHidden = true
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return statePickerViewData.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return statePickerViewData[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        associatedSalesTaxPercentage = Double(taxData?.tax[statePickerViewData[row]] ?? 0)
        salesTaxPercentageTextField.text = "\( associatedSalesTaxPercentage)"
        shoppingOne?.salesTaxPercentage = associatedSalesTaxPercentage
        updateFinalPrice()
    }
}
