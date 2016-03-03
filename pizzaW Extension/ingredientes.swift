//
//  ingredientes.swift
//  Pizza
//
//  Created by Carlos Buitrago on 2/03/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import WatchKit
import Foundation


class ingredientes: WKInterfaceController {

    var ingredientes = [false,false,false,false,false,false,false,false,false,false]
     var numeroDeBotonoes = 0
    var queso = ""
    var tamaño = ""
    var masa = ""
    var ingredient = ""
    
    @IBOutlet var jamonS: WKInterfaceSwitch!
    @IBOutlet var pepperoniS: WKInterfaceSwitch!
    @IBOutlet var pavoS: WKInterfaceSwitch!
    @IBOutlet var slachichaS: WKInterfaceSwitch!
    @IBOutlet var aceitunaS: WKInterfaceSwitch!
    @IBOutlet var cebollaS: WKInterfaceSwitch!
    @IBOutlet var pimientaS: WKInterfaceSwitch!
    @IBOutlet var piñaS: WKInterfaceSwitch!
    @IBOutlet var anchoaS: WKInterfaceSwitch!
    @IBOutlet var boton: WKInterfaceButton!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Valor3
        tamaño = c.tamaño
        masa = c.masa
        queso  = c.queso
        boton.setEnabled(false)
    }
    
    @IBAction func jamon(value: Bool) {
        selec(value, posicion: 0)
    }
    @IBAction func peperoni(value: Bool) {
         selec(value, posicion: 1)
    }
    @IBAction func pavo(value: Bool) {
         selec(value, posicion: 2)
    }
    @IBAction func salchicha(value: Bool) {
         selec(value, posicion: 3)
    }
    @IBAction func aceituna(value: Bool) {
         selec(value, posicion: 4)
    }
    @IBAction func cebolla(value: Bool) {
         selec(value, posicion: 5)
    }
    @IBAction func pimienta(value: Bool) {
         selec(value, posicion: 6)
    }
    @IBAction func piña(value: Bool) {
         selec(value, posicion: 7)
    }
    @IBAction func anchoa(value: Bool) {
         selec(value, posicion: 8)
    }
    
    @IBAction func siguiente() {
        var nombreDeIngredientes = ["Jamón","Pepperoni","Pavo","Salchicha","Aceitunas","cebolla","Pimiento","Piña","Anchoa","Pollo"]
        var j = 0
         var resultadoIngredientes : [String ] = ["","","","",""]
        for var i = 0 ; i < nombreDeIngredientes.count ; i+=1{
            if ingredientes[i]{
                resultadoIngredientes[j] = nombreDeIngredientes[i]
                j++
            }
        }
        
        ingredient = resultadoIngredientes[0]
        for var i = 1 ; i < resultadoIngredientes.count ; i++ {
            if resultadoIngredientes[i] != ""{
                ingredient = ingredient + " \n" + resultadoIngredientes[i]
            }
        }
        
        let valorContex = Valor4(tamaño: tamaño, masa: masa, queso: queso, ingredientes: ingredient)
        pushControllerWithName("Resultado", context: valorContex)
    }
    func selec (encendido: Bool, posicion: Int){
        if encendido {
            numeroDeBotonoes++
            ingredientes[posicion] = true
        }
        else{
            numeroDeBotonoes--
            ingredientes[posicion] = false
        }
        if numeroDeBotonoes>4{
            jamonS.setEnabled(ingredientes[0])
            pepperoniS.setEnabled(ingredientes[1])
            pavoS.setEnabled(ingredientes[2])
            slachichaS.setEnabled(ingredientes[3])
            aceitunaS.setEnabled(ingredientes[4])
            cebollaS.setEnabled(ingredientes[5])
            pimientaS.setEnabled(ingredientes[6])
            piñaS.setEnabled(ingredientes[7])
            anchoaS.setEnabled(ingredientes[8])
        }
        else{
            jamonS.setEnabled(true)
            pepperoniS.setEnabled(true)
            pavoS.setEnabled(true)
            slachichaS.setEnabled(true)
            aceitunaS.setEnabled(true)
            cebollaS.setEnabled(true)
            pimientaS.setEnabled(true)
            piñaS.setEnabled(true)
            anchoaS.setEnabled(true)
        }
        if numeroDeBotonoes == 0{
            boton.setEnabled(false)
        }
        else{
            boton.setEnabled(true)
        }
        
        
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
