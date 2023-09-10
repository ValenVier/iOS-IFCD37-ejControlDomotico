//
//  puertasViewController.swift
//  ejControlDomotico
//
//  Created by Javier Rodríguez Valentín on 22/09/2021.
//

import UIKit

class puertasViewController: UIViewController {

    @IBOutlet weak var scExterior: UISegmentedControl!
    @IBOutlet weak var scCocina: UISegmentedControl!
    @IBOutlet weak var scSalon: UISegmentedControl!
    @IBOutlet weak var scHPrincipal: UISegmentedControl!
    @IBOutlet weak var scHInvitados: UISegmentedControl!
    
    @IBOutlet weak var imExterior: UIImageView!
    @IBOutlet weak var imCocina: UIImageView!
    @IBOutlet weak var imSalon: UIImageView!
    @IBOutlet weak var imHPrincipal: UIImageView!
    @IBOutlet weak var imHInvitados: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        
        imExterior.image = UIImage(named: "puertaCerrada")
        imCocina.image = UIImage(named: "puertaCerrada")
        imSalon.image = UIImage(named: "puertaCerrada")
        imHPrincipal.image = UIImage(named: "puertaCerrada")
        imHInvitados.image = UIImage(named: "puertaCerrada")
    }
    
    @IBAction func scExteriorAc(_ sender: Any) {
        if scExterior.selectedSegmentIndex == 0 {
            label.isHidden = false
            label.text = "Has cerrado la puerta exterior"
            imExterior.image = UIImage(named: "puertaCerrada")
        }else {
            label.isHidden = false
            label.text = "Has abierto la puerta exterior"
            imExterior.image = UIImage(named: "puertaAbierta")
        }
    }
    
    @IBAction func scCocinaAc(_ sender: Any) {
        if scCocina.selectedSegmentIndex == 0 {
            label.isHidden = false
            label.text = "Has cerrado la puerta de la cocina"
            imCocina.image = UIImage(named: "puertaCerrada")
        }else {
            label.isHidden = false
            label.text = "Has abierto la puerta de la cocina"
            imCocina.image = UIImage(named: "puertaAbierta")
        }
    }
    
    @IBAction func scSalonAc(_ sender: Any) {
        if scSalon.selectedSegmentIndex == 0 {
            label.isHidden = false
            label.text = "Has cerrado la puerta del salón"
            imSalon.image = UIImage(named: "puertaCerrada")
        }else {
            label.isHidden = false
            label.text = "Has abierto la puerta del salón"
            imSalon.image = UIImage(named: "puertaAbierta")
        }
    }
    
    @IBAction func scHPrincipalAc(_ sender: Any) {
        if scHPrincipal.selectedSegmentIndex == 0 {
            label.isHidden = false
            label.text = "Has cerrado la puerta de la habitación principal"
            imHPrincipal.image = UIImage(named: "puertaCerrada")
        }else {
            label.isHidden = false
            label.text = "Has abierto la puerta de la habitación principal"
            imHPrincipal.image = UIImage(named: "puertaAbierta")
        }
    }
    
    
    @IBAction func scHInvitadosAc(_ sender: Any) {
        if scHInvitados.selectedSegmentIndex == 0 {
            label.isHidden = false
            label.text = "Has cerrado la puerta de invitados"
            imHInvitados.image = UIImage(named: "puertaCerrada")
        }else {
            label.isHidden = false
            label.text = "Has abierto la puerta de invitados"
            imHInvitados.image = UIImage(named: "puertaAbierta")
        }
    }
    
}
