//
//  HomeDetailPresenter.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import Foundation

final class HomeDetailPresenter: HomeDetailPresenterProtocol {
    weak var view: HomeDetailViewProtocol?
    var interatorOutput: HomeDetailInteractorInputProtocol?
    var wireframe: HomeDetailWireframeProtocol?
    init(view: HomeDetailViewProtocol?,
         wireframe: HomeDetailWireframe,
         interactor: HomeDetailInteractor) {
        self.view = view
        self.wireframe = wireframe
        self.interatorOutput = interactor
    }
    func shuffleCta(forType type: String) {
        interatorOutput?.shuffleCta(forType: type)
    }
    func backCta() {
        wireframe?.backCta()
    }
}

extension HomeDetailPresenter: HomeDetailInteractorOutputProtocol {
    func getRandomImageString(_ string: String) {
        view?.updateImage(withName: string)
    }
}
