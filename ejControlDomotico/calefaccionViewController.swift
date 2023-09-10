//
//  calefaccionViewController.swift
//  ejControlDomotico
//
//  Created by Javier Rodríguez Valentín on 22/09/2021.
//

import UIKit

class calefaccionViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelTermostato: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scCaldera: UISegmentedControl!
    @IBOutlet weak var labelAgua: UILabel!
    @IBOutlet weak var slider2: UISlider!
        
    @IBOutlet weak var textAgua: UILabel!
    @IBOutlet weak var textTermostato: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.isHidden = true
        labelTermostato.isHidden = true
        labelAgua.isHidden = true
        slider.isHidden = true
        slider2.isHidden = true
        textAgua.isHidden = true
        textAgua.text = ""
        textTermostato.isHidden = true
        textTermostato.text = ""
    }
    
    @IBAction func scCalderaAc(_ sender: Any) {
        if scCaldera.selectedSegmentIndex == 0 {
            label.isHidden = true
            label.text = ""
            labelTermostato.isHidden = true
            labelAgua.isHidden = true
            slider.isHidden = true
            slider2.isHidden = true
            textAgua.isHidden = true
            textTermostato.isHidden = true
        }else {
            label.isHidden = false
            label.text = "Has encendido la caldera"
            labelTermostato.isHidden = false
            labelAgua.isHidden = false
            slider.isHidden = false
            slider2.isHidden = false
            textAgua.isHidden = false
            textTermostato.isHidden = false
        }
    }

    @IBAction func slTermostato(_ sender: Any) {
        let step: Float = 1
            let currentValue = round(slider.value / step) * step
            //print("\(currentValue)")
        label.text = "La temperatura del termostato se ha fijado en \(Int(currentValue))ºC"
        textTermostato.text = "\(Int(currentValue))ºC"
    }

    @IBAction func slAgua(_ sender: Any) {
        let step: Float = 1
            let currentValue = round(slider2.value / step) * step
            //print("\(currentValue)")
        label.text = "La temperatura del agua se ha ajustado a \(Int(currentValue))ºC"
        textAgua.text = "\(Int(currentValue))ºC"
    }

}
