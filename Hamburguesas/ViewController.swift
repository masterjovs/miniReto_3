//
//  ViewController.swift
//  Hamburguesas
//
//  Created by JoseOrlandoVargasSanchez on 21/03/16.
//  Copyright © 2016 JoseOrlandoVargasSanchez. All rights reserved.
//


/*   miniReto 3  "QUIERO UNA HAMBURGUESA"


Crea una aplicación para iPhone que le muestre hamburguesas del mundo al usuario. Durante este reto revisarás los conceptos que hemos trabajado del desarrollo de aplicaciones para iPhone y las bases que revisamos de Swift versión 2.0.

Crea un proyecto nuevo en Xcode que se llame Hamburguesas y desarrolla lo siguiente:

1. Crea un archivo de Swift llamado: Datos.swift, dentro de él declara las siguientes clases:

a. class ColeccionDePaises

b. La clase tiene como atributos un arreglo de países de tipo [String], al menos debes contar con 20 países.

c. La clase define el método: func obtenPais( )->String, regresa de manera aleatoria un país del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo países.

2. Dentro del mismo archivo, Datos.swift, crea la clase:

a. class ColeccionDeHamburguesa

b. La clase tiene como atributos un arreglo de hamburguesas de tipo [String], al menos debes contar con 20 hamburguesas al igual que el número de países.

c. La clase define el método: func obtenHamburguesa( )->String, regresa de manera aleatoria una hamburquesa del arreglo, recuerda usar la función de la siguiente manera: Int(arc4random() % x), donde x puede ser el tamaño del arreglo de hamburguesas.

3. Dentro de tu interfaz gráfica debes contar con:

a. Una etiqueta para mostrar el nombre del país.

b. Otra etiqueta para mostrar el nombre de la hamburguesa.

c. Un botón, con la leyenda: “Quiero una hamburguesa!”

d. Debes de mostrar los elementos centrados en la interfaz gráfica

4. En la clase ViewController: desarrolla lo siguiente:

a. Una instancia de la clase ColeccionDePaises.

b. Una instancia de la clase ColeccionDeHamburguesas.

c. Un @IBoutlet para la etiqueta de país.

d. Un @IBoutlet para la etiqueta de hamburguesa.

e. Un @IBAction para implementar cambiar de país y de hamburguesa.

5. Al presionar el botón debes cambiar el país y la hamburguesa que se despliegan en las etiquetas, de manera opcional cambia el color de fondo como se realizo en los videos del módulo 5.

REVIEW CRITERIA

¿El playground se encuentra en GitHub? SI


¿El playground está hecho en Swift? SI

¿Se incluye en el proyecto el archivo: Datos.swift? SI

¿Dentro del archivo Datos.swift se define la clase: ColeccionDePaises con la funcionalidad definida? SI

¿Dentro del archivo Datos.swift se define la clase: ColeccionDeHamburguesas con la funcionalidad definida? SI

¿La interfaz gráfica define las dos etiquetas y el botón de: “Quiero una hamburguesa!!!”?  SI

¿Los elementos gráficos se encuentran centrados?   SI

¿La clase ViewController.swift define una instancia de cada una de las siguientes clases ColeccionDePaises,  ColeccionDeHamburguesas?  SI

¿La clase ViewController.swift cuenta con: Un @IBoutlet para la etiqueta de país. Un @IBoutlet para la etiqueta de hamburguesa. Un @IBAction para implementar cambiar de país y de hamburguesa? SI


¿Al presionar el botón se cambian de manera aleatoria los valores de la etiqueta país y hamburguesa?  SI


*/



import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelPaises: UILabel!
    @IBOutlet weak var labelHamburguesas: UILabel!
    
    @IBOutlet weak var labelPrecio: UILabel!
    
    @IBOutlet weak var fotoBandera: UIImageView!
    @IBOutlet weak var fotoHamburguesa: UIImageView!
    
    
    let nombresDePaises = ColeccionDePaises()
    let nombreHamburgeusa = ColeccionDeHamburguesas()
    
    
    let coloresFondo = Colores()        // declaracion de variable tipo estructura donde estea el arreglo de colores

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func solicitaHamburguesa() {
    
        labelPaises.text = nombresDePaises.regresaNombrePais()
        
        labelHamburguesas.text = nombreHamburgeusa.obtenHamburguesa()
        
        
        
        // Modifica el color del fondo de la vista ppal
        
        let colorAleatorioBackground = coloresFondo.regresaColorAleatorio()
        view.backgroundColor = colorAleatorioBackground
        view.tintColor = colorAleatorioBackground
        
        
        
        let temporal = labelPaises.text
        //print("\(temporal)")
        if temporal == "Colombia"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "colombiaFlag")
            self.fotoHamburguesa.image = UIImage(named: "colombiaBurger")
            labelPrecio.text = "12 USD"
            
        }
            
        else if temporal == "Argentina"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "argentinaFlag")
            self.fotoHamburguesa.image = UIImage(named: "argentinaBurger")
            labelPrecio.text = "10 USD"
        }
            
        else if temporal == "Bolivia"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "boliviaFlag")
             self.fotoHamburguesa.image = UIImage(named: "boliviaBurger")
            labelPrecio.text = "20 USD"
        }
        else if temporal == "Brasil"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "brasilFlag")
             self.fotoHamburguesa.image = UIImage(named: "brasilBurger")
            labelPrecio.text = "17 USD"
        }
        else if temporal == "Canada"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "canadaFlag")
             self.fotoHamburguesa.image = UIImage(named: "canadaBurger")
            labelPrecio.text = "7 USD"

        }
        else if temporal == "Chile"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "chileFlag")
             self.fotoHamburguesa.image = UIImage(named: "chileBurger")
            labelPrecio.text = "11 USD"

        }
        else if temporal == "CostaRica"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "costaricaFlag")
             self.fotoHamburguesa.image = UIImage(named: "colombiaBurger")
            labelPrecio.text = "15 USD"
        }
        else if temporal == "Ecuador"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "ecuadorFlag")
            self.fotoHamburguesa.image = UIImage(named: "ecuadorBurger")
            labelPrecio.text = "11 USD"
        }
        else if temporal == "ElSalvador"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "elsalvadorFlag")
            self.fotoHamburguesa.image = UIImage(named: "elsalvadorBurger")
            labelPrecio.text = "5 USD"
        }
        else if temporal == "Guatemala"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "guatemalaFlag")
            self.fotoHamburguesa.image = UIImage(named: "guatemalaBurger")
            labelPrecio.text = "8 USD"
        }
        else if temporal == "Guyana"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "guyanaFlag")
            self.fotoHamburguesa.image = UIImage(named: "guyanaBurger")
            labelPrecio.text = "21 USD"
        }
        else if temporal == "Honduras"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "hondurasFlag")
            self.fotoHamburguesa.image = UIImage(named: "hondurasBurger")
            labelPrecio.text = "5 USD"
        }
        else if temporal == "Mexico"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "mexicoFlag")
            self.fotoHamburguesa.image = UIImage(named: "mexicoBurger")
            labelPrecio.text = "10 USD"
        }
        else if temporal == "Nicaragua"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "nicaraguaFlag")
            self.fotoHamburguesa.image = UIImage(named: "nicaraguaBurger")
            labelPrecio.text = "11 USD"
        }
        else if temporal == "Panama"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "panamaFlag")
            self.fotoHamburguesa.image = UIImage(named: "panamaBurger")
            labelPrecio.text = "19 USD"
        }
        
        
        else if temporal == "Paraguay"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "paraguayFlag")
            self.fotoHamburguesa.image = UIImage(named: "paraguayBurger")
            labelPrecio.text = "11 USD"
            
        }
        else if temporal == "Peru"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "peruFlag")
            self.fotoHamburguesa.image = UIImage(named: "peruBurger")
            labelPrecio.text = "15 USD"
        }
        else if temporal == "Uruguay"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "uruguayFlag")
            self.fotoHamburguesa.image = UIImage(named: "uruguayBurger")
            labelPrecio.text = "18 USD"
        }
        else if temporal == "EstadosUnidos"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "usaFlag")
            self.fotoHamburguesa.image = UIImage(named: "usaBurger")
            labelPrecio.text = "11 USD"
        }
        else if temporal == "Venezuela"{
            //print("OK")
            self.fotoBandera.image = UIImage(named: "venezuelaFlag")
            self.fotoHamburguesa.image = UIImage(named: "venezuelaBurger")
            labelPrecio.text = "100 USD"
        }
            else {
            self.fotoBandera.image = UIImage(named: "")
            self.fotoHamburguesa.image = UIImage(named: "")
            }
        
    
        
    }

}

