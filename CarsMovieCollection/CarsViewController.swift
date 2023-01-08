//
//  CarsViewController.swift
//  CarsMovieCollection
//
//  Created by Atalay Çavuşoğlu on 7.01.2023.
//

import Foundation
import UIKit

class CarsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var myCars = [Cars]()
    var chosenCars : Cars?
    
    
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let mcq = Cars(carsAd: "Lightning McQueen", carsTamAd: "Lightning McQueen", carsImage: UIImage(named: "mc")!)
        let mater = Cars(carsAd: "Mater", carsTamAd: "Mater", carsImage: UIImage(named: "mater")!)
        let sally = Cars(carsAd: "Sally", carsTamAd: "Sally", carsImage: UIImage(named: "sally")!)
        let king = Cars(carsAd: "The King", carsTamAd: "The King", carsImage: UIImage(named: "king")!)
        let chick = Cars(carsAd: "Chick Hicks", carsTamAd: "Chick Hicks", carsImage: UIImage(named: "chick")!)
        let francesco = Cars(carsAd: "Francesco Bernoulli", carsTamAd: "Francesco Bernoulli", carsImage: UIImage(named: "fran")!)
        let sheriff = Cars(carsAd: "Sheriff", carsTamAd: "Sheriff", carsImage: UIImage(named: "sherif")!)
        let flo = Cars(carsAd: "Flo", carsTamAd: "Flo", carsImage: UIImage(named: "flo")!)
        let ramone = Cars(carsAd: "Ramone", carsTamAd: "Ramone", carsImage: UIImage(named: "ramone")!)
        let fill = Cars(carsAd: "Fillmore", carsTamAd: "Fillmore", carsImage: UIImage(named: "fill")!)
        let serge = Cars(carsAd: "Serge", carsTamAd: "Serge", carsImage: UIImage(named: "serge")!)
        let luigi = Cars(carsAd: "Guido", carsTamAd: "Guido", carsImage: UIImage(named: "luigi")!)
        let guido = Cars(carsAd: "Luigi", carsTamAd: "Luigi", carsImage: UIImage(named: "guido")!)
        let finn = Cars(carsAd: "Finn McMissile", carsTamAd: "Finn McMissile", carsImage: UIImage(named: "finn")!)
        let storm = Cars(carsAd: "Jackson Storm", carsTamAd: "Jackson Storm", carsImage: UIImage(named: "storm")!)
        let cruz = Cars(carsAd: "Cruz Ramirez", carsTamAd: "Cruz Ramirez", carsImage: UIImage(named: "cruz")!)
        let fred = Cars(carsAd: "Fred", carsTamAd: "Fred", carsImage: UIImage(named: "fred")!)
        let hamilton = Cars(carsAd: "Lewis Hamilton", carsTamAd: "Lewis Hamilton", carsImage: UIImage(named: "ham")!)
        let fan = Cars(carsAd: "Kid", carsTamAd: "Kid", carsImage: UIImage(named: "fan")!)
        
        myCars.append(mcq)
        myCars.append(mater)
        myCars.append(sally)
        myCars.append(king)
        myCars.append(chick)
        myCars.append(francesco)
        myCars.append(sheriff)
        myCars.append(flo)
        myCars.append(ramone)
        myCars.append(fill)
        myCars.append(serge)
        myCars.append(luigi)
        myCars.append(guido)
        myCars.append(finn)
        myCars.append(storm)
        myCars.append(cruz)
        myCars.append(fred)
        myCars.append(hamilton)
        myCars.append(fan)
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myCars[indexPath.row].ad
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCars = myCars[indexPath.row]
        self.performSegue(withIdentifier: "toCarsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCarsVC" {
            let destinationVC = segue.destination as! CarsVC
            destinationVC.selectedCars = chosenCars
        }
    }
    
    
    
    
    
    
}
