//
//  ViewController.swift
//  Calculator
//
//  Created by diego.rios on 05/02/19.
//  Copyright © 2019 diego.rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var sum: UIButton!
    @IBOutlet weak var sub: UIButton!
    @IBOutlet weak var div: UIButton!
    @IBOutlet weak var mul: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var clear: UIButton!
    
    var first_number: String = ""
    var second_number: String = ""
    var first = true
    var operation = ""
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pressZero(_ sender: Any) {
        if first {
            first_number += "0"
            label.text = first_number
        }else{
            second_number += "0"
            label.text = second_number
        }
    }
    
    @IBAction func pressOne(_ sender: Any) {
        if first {
            first_number += "1"
            label.text = first_number
        }else{
            second_number += "1"
            label.text = second_number
        }
    }
    
    @IBAction func pressTwo(_ sender: Any) {
        if first {
            first_number += "2"
            label.text = first_number
        }else{
            second_number += "2"
            label.text = second_number
        }
    }
    
    @IBAction func pressThree(_ sender: Any) {
        if first {
            first_number += "3"
            label.text = first_number
        }else{
            second_number += "3"
            label.text = second_number
        }
    }
    
    @IBAction func pressFour(_ sender: Any) {
        if first {
            first_number += "4"
            label.text = first_number
        }else{
            second_number += "4"
            label.text = second_number
        }
    }
    
    @IBAction func pressFive(_ sender: Any) {
        if first {
            first_number += "5"
            label.text = first_number
        }else{
            second_number += "5"
            label.text = second_number
        }
    }
    
    @IBAction func pressSix(_ sender: Any) {
        if first {
            first_number += "6"
            label.text = first_number
        }else{
            second_number += "6"
            label.text = second_number
        }
    }
    
    @IBAction func pressSeven(_ sender: Any) {
        if first {
            first_number += "7"
            label.text = first_number
        }else{
            second_number += "7"
            label.text = second_number
        }
    }
    
    @IBAction func pressEight(_ sender: Any) {
        if first {
            first_number += "8"
            label.text = first_number
        }else{
            second_number += "8"
            label.text = second_number
        }
    }
    
    @IBAction func pressNine(_ sender: Any) {
        if first {
            first_number += "9"
            label.text = first_number
        }else{
            second_number += "9"
            label.text = second_number
        }
    }
    
    @IBAction func adding(_ sender: Any) {
        if !first{
            result = calculate(v1: Int(first_number)!, v2: Int(second_number)!, op: operation)
        }else{
            operation = "add"
            first = false
        }
    }
    
    
    @IBAction func subtracting(_ sender: Any) {
        operation = "sub"
        first = false
    }
    
    @IBAction func division(_ sender: Any) {
        operation = "div"
        first = false
    }
 
    @IBAction func multiplication(_ sender: Any) {
        operation = "mul"
        first = false
    }
    
    @IBAction func equals(_ sender: Any) {
        if !first {
            result = calculate(v1: Int(first_number)!, v2: Int(second_number)!, op: operation)
            label.text = String(result)
        }
    }
    
    @IBAction func clearInput(_ sender: Any) {
        first_number = ""
        second_number = ""
        first = true
        operation = ""
        result = 0
    }
    
    func calculate(v1: Int, v2: Int, op: String) -> Int {
        var aux = v1
        switch(operation){
        case "add":
            aux += v2
            return aux
        case "sub":
            aux -= v2
            return aux
        case "div":
            aux /= v2
            return aux
        case "mul":
            aux *= v2
            return aux
        default:
            aux += 0
            return aux
        }
    }
}

