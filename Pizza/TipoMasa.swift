//
//  TipoMasa.swift
//  Pizza
//
//  Created by Carlos Buitrago on 27/02/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit

class TipoMasa: UIViewController,UIPickerViewDelegate,UITextFieldDelegate {

    let masas: [String] = ["- - - -","delgada", "crujiente", "gruesa"]
    
    @IBOutlet weak var fondo: UIImageView!
    
    @IBOutlet weak var boton: UIButton!
    @IBOutlet var ss: UIView!
    
    var resultadoTipoMasa : String = ""
    var tamañoPizza :String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultadoTipoMasa = masas[0]
        boton.layer.cornerRadius = 10
        boton.layer.masksToBounds = true
        boton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        
        
        fondo.image = UIImage(named: "fondo.png")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masas[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        resultadoTipoMasa = masas[row]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaResultados = segue.destinationViewController as! TipoQueso
        vistaResultados.tamañoPizza = tamañoPizza
        vistaResultados.tipoMasa = resultadoTipoMasa
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
