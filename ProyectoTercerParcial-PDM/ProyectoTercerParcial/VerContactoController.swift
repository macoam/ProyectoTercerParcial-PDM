//
//  VerContactoController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation
import UIKit

class VerContactoController : UIViewController {
    
    var indice : Int = -1
    var pelicula : Pelicula?
    var callbackActualizarTVPeliculas : (() -> Void)?
    var callbackEliminarPelicula : ((Int) -> Void)?
    
    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var lblProductora: UILabel!
    @IBOutlet weak var lblAnno: UILabel!
    @IBOutlet weak var lblEstreno: UILabel!
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblClasificacion: UILabel!
    @IBOutlet weak var lblIdioma: UILabel!
    @IBOutlet weak var lblSipnosis: UILabel!
    
    @IBOutlet weak var lblTituloEditar: UILabel!
    @IBOutlet weak var lblProductoraEditar: UILabel!
    @IBOutlet weak var lblAnnoEditar: UILabel!
    @IBOutlet weak var lblEstrenoEditar: UILabel!
    @IBOutlet weak var lblPaisEditar: UILabel!
    @IBOutlet weak var lblGeneroEditar: UILabel!
    @IBOutlet weak var lblDuracionEditar: UILabel!
    @IBOutlet weak var lblClasificacionEditar: UILabel!
    @IBOutlet weak var lblIdiomaEditar: UILabel!
    @IBOutlet weak var lblSipnosisEditar: UILabel!
    
    @IBOutlet weak var txtTitulo: UITextField!
    @IBOutlet weak var txtProductora: UITextField!
    @IBOutlet weak var txtAnno: UITextField!
    @IBOutlet weak var txtEstreno: UITextField!
    @IBOutlet weak var txtPais: UITextField!
    @IBOutlet weak var txtGenero: UITextField!
    @IBOutlet weak var txtDuracion: UITextField!
    @IBOutlet weak var txtClasificacion: UITextField!
    @IBOutlet weak var txtIdioma: UITextField!
    @IBOutlet weak var txtSipnosis: UITextField!
    
    @IBOutlet weak var btnBorrar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    
    override func viewDidLoad() {
        self.title = "Ver Pelicula"
        
        lblTitulo.text = pelicula!.titulo
        lblProductora.text = "\("Productora: ") \(pelicula!.productora)"
        lblAnno.text = pelicula!.anno
        lblEstreno.text = "\("Fecha de Estreno: ") \(pelicula!.estreno)"
        lblPais.text = pelicula!.pais
        lblGenero.text = "\("Genero: ") \(pelicula!.genero)"
        lblDuracion.text = "\("Duracion: ") \(pelicula!.duracion)"
        lblClasificacion.text = pelicula!.clasificacion
        lblIdioma.text = "\("Idioma: ") \(pelicula!.idioma)"
        lblSipnosis.text = "\("Tag: ") \(pelicula!.tag)"
        
        txtTitulo.text = pelicula!.titulo
        txtProductora.text = pelicula!.productora
        txtAnno.text = pelicula!.anno
        txtEstreno.text = pelicula!.estreno
        txtPais.text = pelicula!.pais
        txtGenero.text = pelicula!.genero
        txtDuracion.text = pelicula!.duracion
        txtClasificacion.text = pelicula!.clasificacion
        txtIdioma.text = pelicula!.idioma
        txtSipnosis.text = pelicula!.tag
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarPelicula!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        self.title = "Editar Pelicula"
        btnEditar.isEnabled = false
        btnEditar.isHidden = true
        btnBorrar.isEnabled = false
        btnBorrar.isHidden = true
        btnGuardar.isEnabled = true
        btnGuardar.isHidden = false
        btnCancelar.isEnabled = true
        btnCancelar.isHidden = false
        
        lblTitulo.isHidden = true
        lblProductora.isHidden = true
        lblAnno.isHidden = true
        lblEstreno.isHidden = true
        lblPais.isHidden = true
        lblGenero.isHidden = true
        lblDuracion.isHidden = true
        lblClasificacion.isHidden = true
        lblIdioma.isHidden = true
        lblSipnosis.isHidden = true
        
        lblTituloEditar.isHidden = false
        lblProductoraEditar.isHidden = false
        lblAnnoEditar.isHidden = false
        lblEstrenoEditar.isHidden = false
        lblPaisEditar.isHidden = false
        lblGeneroEditar.isHidden = false
        lblDuracionEditar.isHidden = false
        lblClasificacionEditar.isHidden = false
        lblIdiomaEditar.isHidden = false
        lblSipnosisEditar.isHidden = false
        
        txtTitulo.isEnabled = true
        txtTitulo.isHidden = false
        txtProductora.isEnabled = true
        txtProductora.isHidden = false
        txtAnno.isEnabled = true
        txtAnno.isHidden = false
        txtEstreno.isEnabled = true
        txtEstreno.isHidden = false
        txtPais.isEnabled = true
        txtPais.isHidden = false
        txtGenero.isEnabled = true
        txtGenero.isHidden = false
        txtDuracion.isEnabled = true
        txtDuracion.isHidden = false
        txtClasificacion.isEnabled = true
        txtClasificacion.isHidden = false
        txtIdioma.isEnabled = true
        txtIdioma.isHidden = false
        txtSipnosis.isEnabled = true
        txtSipnosis.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        self.title = "Ver Pelicula"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblTitulo.isHidden = false
        lblProductora.isHidden = false
        lblAnno.isHidden = false
        lblEstreno.isHidden = false
        lblPais.isHidden = false
        lblGenero.isHidden = false
        lblDuracion.isHidden = false
        lblClasificacion.isHidden = false
        lblIdioma.isHidden = false
        lblSipnosis.isHidden = false
        
        lblTituloEditar.isHidden = true
        lblProductoraEditar.isHidden = true
        lblAnnoEditar.isHidden = true
        lblEstrenoEditar.isHidden = true
        lblPaisEditar.isHidden = true
        lblGeneroEditar.isHidden = true
        lblDuracionEditar.isHidden = true
        lblClasificacionEditar.isHidden = true
        lblIdiomaEditar.isHidden = true
        lblSipnosisEditar.isHidden = true
        
        txtTitulo.isEnabled = false
        txtTitulo.isHidden = true
        txtProductora.isEnabled = false
        txtProductora.isHidden = true
        txtAnno.isEnabled = false
        txtAnno.isHidden = true
        txtEstreno.isEnabled = false
        txtEstreno.isHidden = true
        txtPais.isEnabled = false
        txtPais.isHidden = true
        txtGenero.isEnabled = false
        txtGenero.isHidden = true
        txtDuracion.isEnabled = false
        txtDuracion.isHidden = true
        txtClasificacion.isEnabled = false
        txtClasificacion.isHidden = true
        txtIdioma.isEnabled = false
        txtIdioma.isHidden = true
        txtSipnosis.isEnabled = false
        txtSipnosis.isHidden = true
        
        pelicula!.titulo = txtTitulo.text!
        pelicula!.productora = txtProductora.text!
        pelicula!.anno = txtAnno.text!
        pelicula!.estreno = txtEstreno.text!
        pelicula!.pais = txtPais.text!
        pelicula!.genero = txtGenero.text!
        pelicula!.duracion = txtDuracion.text!
        pelicula!.clasificacion = txtClasificacion.text!
        pelicula!.idioma = txtIdioma.text!
        pelicula!.tag = txtSipnosis.text!
        
        lblTitulo.text = txtTitulo.text!
        lblProductora.text = txtProductora.text!
        lblAnno.text = txtAnno.text!
        lblEstreno.text = txtEstreno.text!
        lblPais.text = txtPais.text!
        lblGenero.text = txtGenero.text!
        lblDuracion.text = txtDuracion.text!
        lblClasificacion.text = txtClasificacion.text!
        lblIdioma.text = txtIdioma.text!
        lblSipnosis.text = txtSipnosis.text!
        
        callbackActualizarTVPeliculas!()
    }
    
    @IBAction func doTapCancelar(_ sender: Any) {
        self.title = "Ver Pelicula"
        btnEditar.isEnabled = true
        btnEditar.isHidden = false
        btnBorrar.isEnabled = true
        btnBorrar.isHidden = false
        btnGuardar.isEnabled = false
        btnGuardar.isHidden = true
        btnCancelar.isEnabled = false
        btnCancelar.isHidden = true
        
        lblTitulo.isHidden = false
        lblProductora.isHidden = false
        lblAnno.isHidden = false
        lblEstreno.isHidden = false
        lblPais.isHidden = false
        lblGenero.isHidden = false
        lblDuracion.isHidden = false
        lblClasificacion.isHidden = false
        lblIdioma.isHidden = false
        lblSipnosis.isHidden = false
        
        lblTituloEditar.isHidden = true
        lblProductoraEditar.isHidden = true
        lblAnnoEditar.isHidden = true
        lblEstrenoEditar.isHidden = true
        lblPaisEditar.isHidden = true
        lblGeneroEditar.isHidden = true
        lblDuracionEditar.isHidden = true
        lblClasificacionEditar.isHidden = true
        lblIdiomaEditar.isHidden = true
        lblSipnosisEditar.isHidden = true
        
        txtTitulo.isEnabled = false
        txtTitulo.isHidden = true
        txtProductora.isEnabled = false
        txtProductora.isHidden = true
        txtAnno.isEnabled = false
        txtAnno.isHidden = true
        txtEstreno.isEnabled = false
        txtEstreno.isHidden = true
        txtPais.isEnabled = false
        txtPais.isHidden = true
        txtGenero.isEnabled = false
        txtGenero.isHidden = true
        txtDuracion.isEnabled = false
        txtDuracion.isHidden = true
        txtClasificacion.isEnabled = false
        txtClasificacion.isHidden = true
        txtIdioma.isEnabled = false
        txtIdioma.isHidden = true
        txtSipnosis.isEnabled = false
        txtSipnosis.isHidden = true
        
        txtTitulo.text = pelicula!.titulo
        txtProductora.text = pelicula!.productora
        txtAnno.text = pelicula!.anno
        txtEstreno.text = pelicula!.estreno
        txtPais.text = pelicula!.pais
        txtGenero.text = pelicula!.genero
        txtDuracion.text = pelicula!.duracion
        txtClasificacion.text = pelicula!.clasificacion
        txtIdioma.text = pelicula!.idioma
        txtSipnosis.text = pelicula!.tag
    }
    
    
}
