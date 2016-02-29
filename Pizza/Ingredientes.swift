//
//  Ingredientes.swift
//  Pizza
//
//  Created by Carlos Buitrago on 27/02/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var fondo: UIImageView!
    @IBOutlet weak var boton: UIButton!
    
    
    var resultadoIngredientes : [String ] = ["","","","",""]
    var tamañoPizza :String = ""
    var tipoMasa :String = ""
    var tipoQueso :String = ""
    
    var numeroDeBotonoes = 0
    var ingredientes = [false,false,false,false,false,false,false,false,false,false]
    
    @IBAction func botonJamon(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(0,boton:boton)
    }
    @IBAction func botonPepperoni(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(1,boton:boton)
    }
    @IBAction func botonPavo(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(2,boton:boton)
    }
    @IBAction func botonSalchicha(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(3,boton:boton)
    }
    @IBAction func botonAceituna(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(4,boton:boton)
    }
    @IBAction func botonCebolla(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(5,boton:boton)
    }
    @IBAction func botonPimienta(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(6,boton:boton)
    }
    @IBAction func botonPiña(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(7,boton:boton)
    }
    @IBAction func botonAnchoa(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(8,boton:boton)
    }
    @IBAction func botonPollo(sender: AnyObject) {
        let boton = sender as! UIButton
        seleccion(9,boton:boton)
    }
    
    func seleccion (posicion: Int,boton:UIButton){
        if ingredientes[posicion] == true{
            boton.setImage(UIImage(named: "B1.png"), forState: .Normal)
            numeroDeBotonoes--
            ingredientes[posicion] = false
        }
        else{
            if(numeroDeBotonoes < 5){
                boton.setImage(UIImage(named: "B2.png"), forState: .Normal)
                numeroDeBotonoes++
                ingredientes[posicion] = true
            }
            else{
                let alert = UIAlertController(title:"Error", message: "Solo puede seleccionar maximo 5 ingredienes", preferredStyle: .Alert)
                alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        boton.layer.cornerRadius = 10
        boton.layer.masksToBounds = true
        boton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        
        
        fondo.image = UIImage(named: "fondo.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var nombreDeIngredientes = ["Jamón","Pepperoni","Pavo","Salchicha","Aceitunas","cebolla","Pimiento","Piña","Anchoa","Pollo"]
        var j = 0
        for var i = 0 ; i < nombreDeIngredientes.count ; i+=1{
            if ingredientes[i]{
                resultadoIngredientes[j] = nombreDeIngredientes[i]
                j++
            }
        }
        
        let vistaResultados = segue.destinationViewController as! resultados
        vistaResultados.tamañoPizza = tamañoPizza
        vistaResultados.tipoMasa = tipoMasa
        vistaResultados.tipoQueso = tipoQueso
        vistaResultados.ingredient[0] = resultadoIngredientes[0]
        vistaResultados.ingredient[1] = resultadoIngredientes[1]
        vistaResultados.ingredient[2] = resultadoIngredientes[2]
        vistaResultados.ingredient[3] = resultadoIngredientes[3]
        vistaResultados.ingredient[4] = resultadoIngredientes[4]
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
