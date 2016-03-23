//
//  datos.swift
//  Hamburguesas
//
//  Created by JoseOrlandoVargasSanchez on 21/03/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//

import Foundation
import UIKit



class ColeccionDePaises {
    
    var paises = ["Canada","EstadosUnidos","CostaRica","ElSalvador","Guatemala","Honduras","Mexico","Nicaragua","Panama","Argentina","Bolivia","Brasil","Chile","Colombia","Ecuador","Guyana","Paraguay","Peru","Uruguay","Venezuela"]
    
    func regresaNombrePais()->String{
        
        let posicionPais = Int(arc4random()) % paises.count
        return paises[posicionPais]
        
    }   // Fin de Funcion regresaNombrePais
    
}   // Fin de la Clase ColeccionDePaises

//var Pais = ColeccionDePaises()

//Pais.regresaNombrePais()


/////////////////////

class ColeccionDeHamburguesas {
    
    var hamburguesas = ["HamburguesaCarne","HamburguesaPollo","HamburguesaCerdo","HamburguesaLentejas","HamburguesaQuinua","HamburguesaGarbanzo","HamburguesaSoyaAhumada","HamburguesaSoyaApanada","HamburguesaFalafelyAjonjoli","HamburguesaGluten","HamburguesaTocineta","HamburguesaHawaina","HamburguesaToscana","HamburguesaCosteña","HamburguesaChorizo","HamburguesaCordero","HamburguesaItalianaBMT","HamburguesaTofu","HamburguesaBerenjena","HamburguesaLechona"]
    
    var precios = [12,11,20,25]
    
    func obtenHamburguesa( )->String{
        let posicionHamburguesa = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicionHamburguesa]
    }   // Fin de Funcion obtenHamburguesa
}   // Fin de Clase ColeccionDeHamburguesas

//var Hamburguesas = ColeccionDeHamburguesas()

//Hamburguesas.obtenHamburguesa()



