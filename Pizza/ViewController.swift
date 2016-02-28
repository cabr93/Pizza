//
//  ViewController.swift
//  Pizza
//
//  Created by Carlos Buitrago on 27/02/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UITextFieldDelegate {
    
    let arr: [String] = ["- - - -","chica","mediana","grande"]
    
    var resultadoTamañoPizza : String = ""
    var tipoQueso :String = ""
    var ingredientes : String = ""
    var tipoMasa :String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        resultadoTamañoPizza = arr[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        resultadoTamañoPizza = arr[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaResultados = segue.destinationViewController as! TipoMasa
        vistaResultados.tamañoPizza = resultadoTamañoPizza
    }

}

