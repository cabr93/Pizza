//
//  resultado.swift
//  Pizza
//
//  Created by Carlos Buitrago on 3/03/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import WatchKit
import Foundation


class resultado: WKInterfaceController {

    @IBOutlet var textoTamaño: WKInterfaceLabel!
    @IBOutlet var tipiMasaTexto: WKInterfaceLabel!
    @IBOutlet var tipoQuesoTexto: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Valor4
        textoTamaño.setText(String(c.tamaño))
        tipiMasaTexto.setText(String(c.masa))
        tipoQuesoTexto.setText(String(c.queso))
        ingredientes.setText(String(c.ingredientes))
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
