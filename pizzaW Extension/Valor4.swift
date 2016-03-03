//
//  Valor4.swift
//  Pizza
//
//  Created by Carlos Buitrago on 3/03/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import WatchKit

class Valor4: NSObject {
    var tamaño :String = ""
    var masa :String = ""
    var queso :String = ""
    var ingredientes:String = ""
    init(tamaño:String, masa:String, queso: String,ingredientes :String) {
        self.tamaño = tamaño
        self.masa = masa
        self.queso = queso
        self.ingredientes = ingredientes
    }
}
