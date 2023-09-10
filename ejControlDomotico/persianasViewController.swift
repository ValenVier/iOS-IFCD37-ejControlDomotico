//
//  persianasViewController.swift
//  ejControlDomotico
//
//  Created by Javier Rodríguez Valentín on 22/09/2021.
//

import UIKit

class persianasViewController: UIViewController {

    
    @IBOutlet weak var slSalon: UISlider!
    @IBOutlet weak var imSalon: UIImageView!
    @IBOutlet weak var slCocina: UISlider!
    @IBOutlet weak var imCocina: UIImageView!
    @IBOutlet weak var slHPrincipal: UISlider!
    @IBOutlet weak var imHPrincipal: UIImageView!
    @IBOutlet weak var slHInvitados: UISlider!
    @IBOutlet weak var imHInvitados: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.isHidden = true
        slSalon.minimumTrackTintColor = .red
        slSalon.maximumTrackTintColor = .blue
        slCocina.minimumTrackTintColor = .red
        slCocina.maximumTrackTintColor = .blue
        slHPrincipal.minimumTrackTintColor = .red
        slHPrincipal.maximumTrackTintColor = .blue
        slHInvitados.minimumTrackTintColor = .red
        slHInvitados.maximumTrackTintColor = .blue
        
        slSalon.maximumValue = 100
        slSalon.minimumValue = 0
        slSalon.value = 0
        slCocina.maximumValue = 100
        slCocina.minimumValue = 0
        slCocina.value = 0
        slHPrincipal.maximumValue = 100
        slHPrincipal.minimumValue = 0
        slHPrincipal.value = 0
        slHInvitados.maximumValue = 100
        slHInvitados.minimumValue = 0
        slHInvitados.value = 0
        
        
    }
    
    @IBAction func slSalonA(_ sender: Any) {
        label.isHidden = false
        let step: Float = 10
        let currentValue = round(slSalon.value / step) * step
            //print("\(currentValue)")
        label.text = "La apertura de la persiana del salón es del \(Int(currentValue))%"
    }
    
    @IBAction func slCocinaA(_ sender: Any) {
        label.isHidden = false
        let step: Float = 10
        let currentValue = round(slCocina.value / step) * step
            //print("\(currentValue)")
        label.text = "La apertura de la persiana de la cocina es del \(Int(currentValue))%"
    }
    
    @IBAction func slHPrincipalA(_ sender: Any) {
        label.isHidden = false
        let step: Float = 10
        let currentValue = round(slHPrincipal.value / step) * step
            //print("\(currentValue)")
        label.text = "La apertura de la persiana de la habitación principal es del \(Int(currentValue))%"
    }
    
    @IBAction func slHInvitadosA(_ sender: Any) {
        label.isHidden = false
        let step: Float = 10
        let currentValue = round(slHInvitados.value / step) * step
            //print("\(currentValue)")
        label.text = "La apertura de la persiana de la habitación de invitados es del \(Int(currentValue))%"
    }

}
