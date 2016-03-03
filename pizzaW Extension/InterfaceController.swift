//
//  InterfaceController.swift
//  pizzaW Extension
//
//  Created by Carlos Buitrago on 2/03/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {


    @IBOutlet var tamaño: WKInterfacePicker!
    
    var tipo = ""
    let tama: [String] = ["chica", "mediana", "grande"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        var pickerItems: [WKPickerItem] = []
        for i in 0...tama.count-1 {
            let item = WKPickerItem()
            item.title = tama[i]
            pickerItems.append(item)
        }
        self.tamaño.setItems(pickerItems)
        tipo = "chica"
    }

    @IBAction func tamañoP(value: Int) {
        tipo = tama[value]
    }

    @IBAction func siguiente() {
        let valorContex = Valor(tamaño: tipo)
        pushControllerWithName("TipoMasa", context: valorContex)
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
