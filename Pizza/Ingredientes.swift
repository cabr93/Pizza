//
//  Ingredientes.swift
//  Pizza
//
//  Created by Carlos Buitrago on 27/02/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController,UIPickerViewDelegate,UITextFieldDelegate {

    let ingredientes: [String] = ["- - - -","jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"]
    
    var resultadoIngredientes : String = ""    
    var tamañoPizza :String = ""
    var tipoMasa :String = ""
    var tipoQueso :String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultadoIngredientes = ingredientes[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ingredientes.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ingredientes[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        resultadoIngredientes = ingredientes[row]
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaResultados = segue.destinationViewController as! resultados
        vistaResultados.tamañoPizza = tamañoPizza
        vistaResultados.tipoMasa = tipoMasa
        vistaResultados.tipoQueso = tipoQueso
        vistaResultados.ingredientes = resultadoIngredientes
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
