//
//  ViewController.swift
//  PhysicsFormula
//
//  Created by Renan Geraldo on 18/05/15.
//  Copyright (c) 2015 Renan Geraldo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var pickerViewData = []

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
            
        }
    
    //MARK : Buttons in View
    
    //Mechanic Button
    @IBAction func mechanicButton(sender: AnyObject) {
    //pickerViewData = ["Cinemática", "Dinâmica", "Estática", "Hidrostática", "Gravitação Universal"]
        var access = AcessData()
        pickerViewData = access.accessingSubAreas("Mecânica")
        
    
        performSegueWithIdentifier("toFormulaView", sender: nil)
    }
   
    //Wave Button
    @IBAction func waveButton(sender: AnyObject) {
        
    pickerViewData = ["Movimento Harmônico Simples", "Ondas", "Acústica"]
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    // Electromagnestism button
    @IBAction func electricMagnetism(sender: AnyObject) {
    pickerViewData = ["Eletrostática", "Eletrodinâmica", "Acústica"]
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    
    // Optic Button
    @IBAction func opticButton(sender: AnyObject) {
    
    pickerViewData = ["Óptica Geométrica"]
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    //Thermology Button
    @IBAction func thermologyButton(sender: AnyObject) {
    
    pickerViewData = ["Termometria", "Calorimetria", "Estudo dos Gases", "Termodinâmica", "Dilatação", "Entropia"]
    performSegueWithIdentifier("toFormulaView", sender: nil)
    
    }
    
    
    
    
    
    //Prepeare for Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationVC = segue.destinationViewController as! FormulaViewController
            destinationVC.pickerViewData = self.pickerViewData
        
        }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

