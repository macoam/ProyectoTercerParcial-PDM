//
//  AgregarContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtTitulo: UITextField!
    @IBOutlet weak var txtProductora: UITextField!
    @IBOutlet weak var txtAnno: UITextField!
    @IBOutlet weak var txtEstreno: UITextField!
    @IBOutlet weak var txtPais: UITextField!
    @IBOutlet weak var txtGenero: UITextField!
    @IBOutlet weak var txtDuracion: UITextField!
    @IBOutlet weak var txtClasificacion: UITextField!
    @IBOutlet weak var txtIdioma: UITextField!
    @IBOutlet weak var txtSinopsis: UITextField!
    
    var callBackAgregarPelicula : ((Pelicula) -> Void)?
    override func viewDidLoad() {
        self.title = "Agregar Pelicula"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let titulo = txtTitulo.text!
        let productora = txtProductora.text!
        let anno = txtAnno.text!
        let estreno = txtEstreno.text!
        let pais = txtPais.text!
        let genero = txtGenero.text!
        let duracion = txtDuracion.text!
        let clasificacion = txtClasificacion.text!
        let idioma = txtIdioma.text!
        let tag = txtSinopsis.text!
        
        let pelicula = Pelicula(titulo: titulo, productora: productora, anno: anno, estreno: estreno, pais: pais, genero: genero, duracion: duracion, clasificacion: clasificacion, idioma: idioma, tag: tag)
        
        callBackAgregarPelicula!(pelicula)
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
