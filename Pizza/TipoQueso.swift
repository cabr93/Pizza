//
//  TipoQueso.swift
//  Pizza
//
//  Created by Carlos Buitrago on 27/02/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit

class TipoQueso: UIViewController,UIPickerViewDelegate,UITextFieldDelegate {

    let quesos: [String] = ["- - - -","mozarela", "cheddar", "parmesano", "sin queso"]
    
    var resultadoTipoQueso : String = ""
    var tamañoPizza :String = ""
    var tipoMasa :String = ""
    var ingredientes : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultadoTipoQueso = quesos[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return quesos[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        resultadoTipoQueso = quesos[row]
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaResultados = segue.destinationViewController as! Ingredientes
        vistaResultados.tamañoPizza = tamañoPizza
        vistaResultados.tipoMasa = tipoMasa
        vistaResultados.tipoQueso = resultadoTipoQueso
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
