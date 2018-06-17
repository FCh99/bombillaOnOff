//
//  ViewController.swift
//  Temp
//
//  Created by Fausto Checa on 15/6/18.
//  Copyright © 2018 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ok = true
    var name  = "name"
    var pass = "pass"
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    @IBOutlet weak var outLabel: UILabel!
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }
    
    @IBAction func GoAction(_ sender: Any) {
        if (nameTextField.text == name && passTextField.text == pass){
            outLabel.text = "on / off"
            outLabel.backgroundColor = UIColor.green
           
            if ok == true {
                 enseñaImagen(ok)
                ok = false
                
            } else {
                 enseñaImagen(ok)
                ok = true
                
            }
            
            
            
        } else {
            outLabel.text = "No puede entrar"
            outLabel.backgroundColor = UIColor.red
            ok = false
            imageView.image = nil
            
            
        }
        
    }
    
    func enseñaImagen(_ permiso: Bool) {
        if permiso == true {
            print("bombilla amarilla")
            imageView.image = UIImage(named: "bombillaEncendida")
            ok = false
        } else {
            print("bombillaa apagada")
            imageView.image = UIImage(named: "bombillaApagada")
            
        }
    }
    

   

}

