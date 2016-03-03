//
//  Valor3.swift
//  Pizza
//
//  Created by Carlos Buitrago on 3/03/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import WatchKit

class Valor3: NSObject {
    var tamaño :String = ""
    var masa :String = ""
    var queso :String = ""
    init(tamaño:String, masa:String, queso: String) {
        self.tamaño = tamaño
        self.masa = masa
        self.queso = queso
    }
}
