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
    
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var boton2: UIButton!
    
 
    var tamañoPizza :String = ""
    var tipoMasa :String = ""
    var tipoQueso :String = ""
    
    var ingredient : [String] = ["","" ,"","",""]
    
    var flag = false
    
    override func viewWillAppear(animated: Bool) {
        Tamaño.text = String(tamañoPizza)
        masa.text = String(tipoMasa)
        queso.text = String(tipoQueso)
        ingre.text = String(ingredient[0])+"\n"+String(ingredient[1])+"\n"+String(ingredient[2])+"\n"+String(ingredient[3])+"\n"+String(ingredient[4])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        boton.layer.cornerRadius = 10
        boton.layer.masksToBounds = true
        boton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        boton2.layer.cornerRadius = 10
        boton2.layer.masksToBounds = true
        boton2.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        
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
        if (Tamaño.text == "- - - -" || masa.text == "- - - -" || queso.text == "- - - -" || ingredient[0] == ""){
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
