//
//  lucesViewController.swift
//  ejControlDomotico
//
//  Created by Javier Rodríguez Valentín on 22/09/2021.
//

import UIKit

class lucesViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imSalon: UIImageView!
    @IBOutlet weak var imCocina: UIImageView!
    @IBOutlet weak var imPasillo: UIImageView!
    @IBOutlet weak var imHabitacion: UIImageView!
  
    @IBOutlet weak var swSalon: UISwitch!
    @IBOutlet weak var swCocina: UISwitch!
    @IBOutlet weak var swPasillo: UISwitch!
    @IBOutlet weak var swHabitacion: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        
        swSalon.onTintColor = .cyan
        swSalon.isOn = false
        swCocina.onTintColor = .cyan
        swCocina.isOn = false
        swPasillo.onTintColor = .cyan
        swPasillo.isOn = false
        swHabitacion.onTintColor = .cyan
        swHabitacion.isOn = false
        
        imSalon.image = UIImage(named: "bombillaApagada")
        imCocina.image = UIImage(named: "bombillaApagada")
        imPasillo.image = UIImage(named: "bombillaApagada")
        imHabitacion.image = UIImage(named: "bombillaApagada")
        
    }
    
    @IBAction func swSalonAc(_ sender: Any) {
        if swSalon.isOn == true {
            label.isHidden = false
            label.text = "Has encendido la luz del salón"
            imSalon.image = UIImage(named: "bombillaEncendida")
        }else{
            label.text = "Has apagado la luz del salón"
            imSalon.image = UIImage(named: "bombillaApagada")
        }
    }
    
    @IBAction func swCocinaAc(_ sender: Any) {
        if swCocina.isOn == true {
            label.isHidden = false
            label.text = "Has encendido la luz de la cocina"
            imCocina.image = UIImage(named: "bombillaEncendida")
        }else{
            label.text = "Has apagado la luz de la cocina"
            imCocina.image = UIImage(named: "bombillaApagada")
        }
    }
    
    @IBAction func swPasillosAc(_ sender: Any) {
        if swPasillo.isOn == true {
            label.isHidden = false
            label.text = "Has encendido la luz del pasillo"
            imPasillo.image = UIImage(named: "bombillaEncendida")
        }else{
            label.text = "Has apagado la luz del pasillo"
            imPasillo.image = UIImage(named: "bombillaApagada")
        }
    }
    
    
    @IBAction func swHabitacionAc(_ sender: Any) {
        if swHabitacion.isOn == true {
            label.isHidden = false
            label.text = "Has encendido la luz de la habitación"
            imHabitacion.image = UIImage(named: "bombillaEncendida")
        }else{
            label.text = "Has apagado la luz de la habitación"
            imHabitacion.image = UIImage(named: "bombillaApagada")
        }
    }
}
