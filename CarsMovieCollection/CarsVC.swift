//
//  CarsVC.swift
//  CarsMovieCollection
//
//  Created by Atalay Çavuşoğlu on 7.01.2023.
//

import UIKit

class CarsVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var adLabel: UILabel!
    
    var selectedCars : Cars?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adLabel.text = selectedCars?.tamAd
        imageView.image = selectedCars?.image

        
    }
    

    
}
