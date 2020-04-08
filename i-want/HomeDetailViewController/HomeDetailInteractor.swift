//
//  HomeDetailInteractor.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import Foundation

final class HomeDetailInteractor: HomeDetailInteractorInputProtocol {
    weak var interactorOutput: HomeDetailInteractorOutputProtocol?
    var type: Titles?
    
    func shuffleCta(forType type: String) {
        switch type {
        case "a pet":
            interactorOutput?.getRandomImageString("pet-\(generateRandomNumb(maxRange: 5))")
        case "a plant":
            interactorOutput?.getRandomImageString("plant-\(generateRandomNumb(maxRange: 5))")
        case "a book":
            interactorOutput?.getRandomImageString("book-\(generateRandomNumb(maxRange: 3))")
        default:
            break
        }
    }
    
    func generateRandomNumb(maxRange: Int) -> Int {
        return Int.random(in: 1..<maxRange)
    }
}
