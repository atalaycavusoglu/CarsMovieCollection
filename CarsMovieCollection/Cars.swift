//
//  Cars.swift
//  CarsMovieCollection
//
//  Created by Atalay Çavuşoğlu on 7.01.2023.
//

import Foundation
import UIKit

class Cars {
    
    var ad : String
    var image : UIImage
    var tamAd : String
    
    
    init(carsAd: String, carsTamAd: String, carsImage : UIImage) {
        self.ad = carsAd
        self.image = carsImage
        self.tamAd = carsTamAd
    }
}
