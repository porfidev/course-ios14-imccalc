//
//  ViewController.swift
//  IMCCalculator
//
//  Created by Porfirio Chávez González on 19/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var imcResult: UILabel!
    @IBOutlet weak var imcClassification: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateIMC(_ sender: Any) {
        // Evitar forzar el valor
        //let weight = Double(weightInput.text!)!
        //let height = Double(heightInput.text!)!
        
        var weight: Double = 0
        var height: Double = 0
        
        if let wText = weightInput.text {
            if let wDouble = Double(wText) {
                weight = wDouble
            }
        }
        
        if let hText = heightInput.text {
            if let hDouble = Double(hText) {
                height = hDouble
            }
        }
        
        let imc = weight/(height*height)
        var classification:String
        
        if(imc < 18.5) {
            classification = "Bajo de Peso"
        } else if imc < 24.9 {
            classification = "Peso normal"
        } else if imc < 29.9 {
            classification = "Sobrepeso"
        } else {
            classification = "Obesidad"
        }
        
        imcResult.text = String(format: "%.1f", imc)
        imcClassification.text = "IMC: \(classification)"
    }
    
}

