//
//  ViewController.swift
//  ejControlDomotico
//
//  Created by Javier Rodríguez Valentín on 22/09/2021.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var picker: UIPickerView!
   
    
    @IBOutlet weak var btn: UIButton!
    
    var array = ["LUCES", "PERSIANAS", "CALEFACCIÓN", "PUERTAS", "CCTV"]
    
    var id:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        picker.dataSource = self
        picker.delegate = self
        btn.isHidden = true
    }

    @IBAction func btnAction(_ sender: Any) {
        //print("desde btnaction")
        btn.isHidden = true
        performSegue(withIdentifier: id!, sender: self)
        
    }
    
}

extension ViewController{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    //mostrarcada elemento del array
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    //función para hacer algo al seleccionar algún elemento
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        btn.isHidden = false
        id = array[row]
        btn.setTitle("Ir a \(id!)", for: .normal)

    }
    
}
