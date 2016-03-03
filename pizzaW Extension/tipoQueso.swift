//
//  tipoQueso.swift
//  Pizza
//
//  Created by Carlos Buitrago on 2/03/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import WatchKit
import Foundation


class tipoQueso: WKInterfaceController {

    @IBOutlet var tipoQueso: WKInterfacePicker!
    
    var tipo = ""
    var tamaño = ""
    var masa = ""
    
    let tipoQ: [String] = ["mozarela", "cheddar", "parmesano", "sin queso"]
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        var pickerItems: [WKPickerItem] = []
        for i in 0...tipoQ.count-1 {
            let item = WKPickerItem()
            item.title = tipoQ[i]
            pickerItems.append(item)
        }
        self.tipoQueso.setItems(pickerItems)
        let c = context as! Valor2
        tamaño = c.tamaño
        masa = c.masa
        tipo = "mozarela"
    }
    
    @IBAction func tipoQueso(value: Int) {
        tipo = tipoQ[value]
    }
   
    @IBAction func siguiente() {
        let valorContex = Valor3(tamaño: tamaño, masa: masa,queso: tipo)
        pushControllerWithName("Ingredientes", context: valorContex)
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
