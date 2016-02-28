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
    
    override func viewWillAppear(animated: Bool) {
        resul.text = String(mensajeResul)
        resulB.setTitle(String(mensajeResulB), forState: .Normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
