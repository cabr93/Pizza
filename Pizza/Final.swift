//
//  final.swift
//  Pizza
//
//  Created by Carlos Buitrago on 28/02/16.
//  Copyright © 2016 Carlos Buitrago. All rights reserved.
//

import UIKit

class final: UIViewController {

    var mensajeResul :String = ""
    var mensajeResulB :String = ""
    @IBOutlet weak var resul: UILabel!
    @IBOutlet weak var resulB: UIButton!
    @IBOutlet weak var fondo: UIImageView!
    @IBOutlet weak var boton: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        resul.text = String(mensajeResul)
        resulB.setTitle(String(mensajeResulB), forState: .Normal)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
