//
//  cctvViewController.swift
//  ejControlDomotico
//
//  Created by Javier Rodríguez Valentín on 22/09/2021.
//

import UIKit
import WebKit

class cctvViewController: UIViewController {
    
    @IBOutlet weak var sc: UISegmentedControl!
    
    @IBOutlet weak var labelCanal: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var cam1: WKWebView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var cam2: WKWebView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var cam3: WKWebView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var cam4: WKWebView!
    
    @IBOutlet weak var slVolumen: UISlider!
    @IBOutlet weak var stCanal: UIStepper!
    
    
    
    var arViews = ["Salón", "Cocina", "H. Principal", "H. Invitados"]
    var arViewsCont:[UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arViewsCont = [view1, view2, view3, view4]
        
        cam1.load(URLRequest(url: URL(string: "https://cdnlive.codev8.net/la8valladolidlive/smil:channel2.smil/playlist.m3u8")!))
        cam2.load(URLRequest(url: URL(string: "https://cdnlive.codev8.net/la8leonlive/smil:channel2.smil/playlist.m3u8")!))
        cam3.load(URLRequest(url: URL(string: "https://cdnlive.codev8.net/la8segovialive/smil:channel2.smil/playlist.m3u8")!))
        cam4.load(URLRequest(url: URL(string: "https://cdnlive.codev8.net/la8burgoslive/smil:channel2.smil/playlist.m3u8")!))
        
        label.isHidden = true
        slVolumen.minimumTrackTintColor = .red
        slVolumen.maximumTrackTintColor = .blue
        slVolumen.maximumValue = 100
        slVolumen.minimumValue = 0
        slVolumen.value = 0
        stCanal.minimumValue = 0
        stCanal.maximumValue = 10
        stCanal.stepValue = 1
        
        sc.removeAllSegments() // eliminar los segments predefinidos
        
        
        
        //hacemos un for each en el array y los pone en los segments
        for (index, value) in arViews.enumerated(){
            sc.insertSegment(withTitle: value, at: index, animated: true)
        }
        
        sc.selectedSegmentIndex = 0 //selecciona el primer segmento al iniciarse
        hideViews(scView: sc.selectedSegmentIndex) //nos llama a la función para ocultar y mostrar los tabs pasándole el índice del segment seleccionado
        
    }
    
    @IBAction func scAct(_ sender: Any) {
        hideViews(scView: sc.selectedSegmentIndex)
    }
    
    func hideViews(scView:Int){
        for (index, value) in arViewsCont.enumerated(){
            value.isHidden = (scView != index)
        }
    }
    
    @IBAction func slVolumenAction(_ sender: Any) {
        label.isHidden = false
        let step: Float = 1
        let currentValue = round(slVolumen.value / step) * step
        //print("\(currentValue)")
        label.text = "Volumen ajustado al nivel:  \(Int(currentValue))"
    }
    
    @IBAction func stCanalAct(_ sender: Any) {
        label.isHidden = false
        labelCanal.text = "\(Int(stCanal.value))"
        
        if stCanal.value == stCanal.maximumValue{
            label.text = "Canal: \(Int(stCanal.value))"
            alerta(msg: "Último canal, no hay más canales")
        }else if stCanal.value == stCanal.minimumValue{
            label.text = "Canal: \(Int(stCanal.value))"
            alerta(msg: "No hay canales por debajo del 0")
        }else{
            label.text = "Canal: \(Int(stCanal.value))"
        }
    }
    
    func alerta(msg:String){
        let alert = UIAlertController(title: "\(msg)", message: "Stepper = \(stCanal.value)", preferredStyle: .alert) //alert
        alert.addAction(UIAlertAction(title: NSLocalizedString("Aceptar", comment: "Default  action"), style: .default, handler: { _ in //botón de aceptar
        }))
        //Sacar el alert
        self.present(alert, animated: true, completion: nil)//en completion podemos dejarlo con nil por defecto o poner una función sin paréntesis por ejemplo: (...completion: alerta) -> siendo alerta otra función diferente. El completion se ejecuta cuando se ejecuta el alert
    }
}
