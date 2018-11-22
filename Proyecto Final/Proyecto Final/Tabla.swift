//
//  Tabla.swift
//  Proyecto Final
//
//  Created by MacBook on 11/21/18.
//  Copyright © 2018 ioslab. All rights reserved.
//

import UIKit

class Tabla: UITableViewController {
    
    var opciones: [String] = ["Cerca de mi", "Economicos", "Express", "Saludable", "Busqueda avanzada"]
    
    var imagenes = [UIImage(named: "Cerca"), UIImage(named: "Eco"), UIImage(named: "Exp"), UIImage(named: "Salud"), UIImage(named: "Avan")]
    
    let cellSpacingHeight: CGFloat = 60
 


    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   /* override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
   */
    

 
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.opciones.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func gradient(frame:CGRect) -> CAGradientLayer {
        let layer = CAGradientLayer()
        layer.frame = frame
        layer.startPoint = CGPoint(x: 0, y: 0.5)
        layer.endPoint = CGPoint(x: 1, y: 0.5)
        layer.colors = [
            UIColor.orange.cgColor,UIColor.red.cgColor]
        return layer
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda", for: indexPath)
        cell.textLabel?.text = opciones[indexPath.section]
        cell.textLabel?.textColor = UIColor.white;
        cell.layer.insertSublayer(gradient(frame: cell.bounds), at:0)
        cell.layer.borderColor = UIColor.red.cgColor
        cell.layer.borderWidth = 0
        cell.layer.cornerRadius = 4
        cell.imageView?.image = imagenes[indexPath.section]
        cell.clipsToBounds = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
   
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return cellSpacingHeight
    }
    
   
}
