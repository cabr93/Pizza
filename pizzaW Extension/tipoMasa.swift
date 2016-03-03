//
//  tipoMasa.swift
//  Pizza
//
//  Created by Carlos Buitrago on 2/03/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import WatchKit
import Foundation


class tipoMasa: WKInterfaceController {


    @IBOutlet var tipoMasa: WKInterfacePicker!
    
    var tipo = ""
    var tamaño = ""
    let tipoM: [String] = ["delgada", "crujiente", "gruesa"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        var pickerItems: [WKPickerItem] = []
        for i in 0...tipoM.count-1 {
            let item = WKPickerItem()
            item.title = tipoM[i]
            pickerItems.append(item)
        }
        self.tipoMasa.setItems(pickerItems)
        let c = context as! Valor
        tamaño = c.dato
        tipo = "delgada"
    }


    @IBAction func tipoMasa(value: Int) {
        tipo = tipoM[value]
    }
   
    @IBAction func Siguiente() {
        let valorContex = Valor2(tamaño: tamaño, masa: tipo)
        pushControllerWithName("TipoQueso", context: valorContex)
        
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
