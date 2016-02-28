//
//  resultados.swift
//  Pizza
//
//  Created by Carlos Buitrago on 27/02/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit

class resultados: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var Tamaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingre: UILabel!
    
    
    var tamañoPizza :String = ""
    var tipoMasa :String = ""
    var tipoQueso :String = ""
    var ingredientes : String = ""
    var flag = false
    
    override func viewWillAppear(animated: Bool) {
        Tamaño.text = String(tamañoPizza)
        masa.text = String(tipoMasa)
        queso.text = String(tipoQueso)
        ingre.text = String(ingredientes)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if flag == true{
        let resultado = mensaje()
        let sigVista = segue.destinationViewController as! final
        sigVista.mensajeResul = resultado.0
        sigVista.mensajeResulB = resultado.1
        }
    }
    
    @IBAction func confOrden(sender: AnyObject) {
        flag = true
        mensaje()
    }
    @IBAction func camOrden(sender: AnyObject) {
        flag = false
    }
    
    func mensaje() ->(String , String){
        var te: String = " "
        var te2: String = " "
        if (Tamaño.text == "- - - -" || masa.text == "- - - -" || queso.text == "- - - -" || ingre.text == "- - - -"){
            te = "Falto ingresar algun ingrediente"
            te2 = "volver ha realizar el pedido"
        }
        else{
            te = "Su pedido ya se realizo"
            te2 = "realizar un nuevo pedido"
        }
        let tupla = (te, te2)
        return tupla
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
