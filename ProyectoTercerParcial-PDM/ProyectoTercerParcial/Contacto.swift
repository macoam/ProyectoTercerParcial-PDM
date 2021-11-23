//
//  Contacto.swift
//  ProyectoTercerParcial
//
//  Created by Alumno on 18/11/21.
//

import Foundation

class Pelicula{
    var titulo : String
    var productora : String
    var anno : String
    var estreno : String
    var pais : String
    var genero : String
    var duracion : String
    var clasificacion : String
    var idioma : String
    var tag : String

    init(titulo: String, productora: String, anno: String, estreno: String, pais: String, genero: String, duracion: String, clasificacion: String, idioma: String, tag: String){
        self.titulo = titulo
        self.productora = productora
        self.anno = anno
        self.estreno = estreno
        self.pais = pais
        self.genero = genero
        self.duracion = duracion
        self.clasificacion = clasificacion
        self.idioma = idioma
        self.tag = tag
    }
}
