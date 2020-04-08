//
//  HomeDetailProtocols.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import Foundation

protocol HomeDetailWireframeProtocol: class {
    func backCta()
}
protocol HomeDetailPresenterProtocol: class {
    var view: HomeDetailViewProtocol? { get set }
    var interatorOutput: HomeDetailInteractorInputProtocol? { get set }
    var wireframe: HomeDetailWireframeProtocol? { get set }
    func shuffleCta(forType type: String)
    func backCta()
}
protocol HomeDetailViewProtocol: class {
    var presenterOutput: HomeDetailPresenterProtocol? { get set }
    func updateImage(withName str: String)
}
protocol HomeDetailInteractorInputProtocol: class {
    var interactorOutput: HomeDetailInteractorOutputProtocol? { get set }
    func shuffleCta(forType type: String)
}
protocol HomeDetailInteractorOutputProtocol: class {
    func getRandomImageString(_ string: String)
}
