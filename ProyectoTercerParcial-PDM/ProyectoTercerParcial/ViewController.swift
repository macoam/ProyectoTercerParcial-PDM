//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import UIKit

var peliculas : [Pelicula] = []

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvPeliculas: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaContacto") as! CeldaContactoController
        
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        celda.lblProductora.text = peliculas[indexPath.row].productora
        celda.lblAnno.text = peliculas[indexPath.row].anno
        celda.lblGenero.text = "\("Genero: ") \(peliculas[indexPath.row].genero)"

        return celda
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVer" {
            let peliculaSeleccionada = peliculas[tvPeliculas.indexPathForSelectedRow!.row]
            let destino = segue.destination as! VerContactoController
            destino.pelicula = peliculaSeleccionada
            destino.indice = tvPeliculas.indexPathForSelectedRow!.row
            destino.callbackActualizarTVPeliculas = actualizarTVPeliculas
            destino.callbackEliminarPelicula = eliminarPelicula
        }
        
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarContactoController
            destino.callBackAgregarPelicula = agregarPelicula
        }
    }
    
    
    override func viewDidLoad() {
        self.title = "Lista de Peliculas"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        peliculas.append(Pelicula(titulo: "Titanic", productora: "20th Century Fox", anno: "1997", estreno: "01/01/98", pais: "USA", genero: "Romance", duracion: "195 minutos", clasificacion: "PG-13", idioma: "Ingles", tag: "#Titanic"))
        peliculas.append(Pelicula(titulo: "Shrek", productora: "DreamWorks", anno: "2001", estreno: "29/06/01", pais: "USA", genero: "Animacion", duracion: "92 minutos", clasificacion: "PG", idioma: "Ingles", tag: "#DoyClasesLosJueves"))
        peliculas.append(Pelicula(titulo: "Iron Man", productora: "Marvel Studios", anno: "2008", estreno: "14/04/08", pais: "USA", genero: "Accion", duracion: "126 minutos", clasificacion: "PG-13", idioma: "Ingles", tag: "#IronMan"))
        peliculas.append(Pelicula(titulo: "El Padrino", productora: "Paramount Pictures", anno: "1972", estreno: "15/03/08", pais: "USA", genero: "Drama", duracion: "177 minutos", clasificacion: "PG-13", idioma: "Ingles", tag: "#AlPacino"))
        peliculas.append(Pelicula(titulo: "El viaje de Chihiro", productora: "Studio Ghibli", anno: "2001", estreno: "20/07/01", pais: "Japon", genero: "Animacion", duracion: "125 minutos", clasificacion: "PG", idioma: "Japones", tag: "#Chihiro"))
        peliculas.append(Pelicula(titulo: "El Rey Leon", productora: "Walt Disney", anno: "1994", estreno: "24/06/94", pais: "USA", genero: "Animacion", duracion: "88 minutos", clasificacion: "PG", idioma: "Ingles", tag: "#Simba"))
        peliculas.append(Pelicula(titulo: "Forrest Gump", productora: "Paramount Pictures", anno: "1994", estreno: "06/07/94", pais: "USA", genero: "Comedia", duracion: "142 minutos", clasificacion: "PG-13", idioma: "Ingles", tag: "#EresUnGenioGump"))
        peliculas.append(Pelicula(titulo: "Toy Story", productora: "Pixar", anno: "1995", estreno: "21/03/96", pais: "USA", genero: "Animacion", duracion: "81 minutos", clasificacion: "PG", idioma: "Ingles", tag: "#SerpienteBota"))
        peliculas.append(Pelicula(titulo: "El Infierno", productora: "Bandidos Films", anno: "2010", estreno: "03/09/10", pais: "Mexico", genero: "Drama", duracion: "148 minutos", clasificacion: "NC-17", idioma: "Español", tag: "#CochiLoco"))
        peliculas.append(Pelicula(titulo: "Inevitable", productora: "9 Productions", anno: "2021", estreno: "12/11/21", pais: "Mexico", genero: "Suspenso", duracion: "6 minutos", clasificacion: "R15", idioma: "Español", tag: "#Epilepsia"))
    }
    
    func actualizarTVPeliculas() {
        tvPeliculas.reloadData()
    }
    
    func eliminarPelicula(indice : Int) {
        peliculas.remove(at: indice)
        actualizarTVPeliculas()
    }
    
    func agregarPelicula(pelicula: Pelicula) {
        peliculas.append(pelicula)
        actualizarTVPeliculas()
    }
}

