//
//  HomePresenter.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import Foundation

final class HomePresenter: HomePresenterProtocol {
    var view: HomeViewProtocol?
    var interactorOutput: HomeInteractorInputProtocol?
    var wireframe: HomeWireframeProtocol?
    init(view: HomeViewProtocol,
         wireframe: HomeWireframeProtocol?,
         interactor: HomeInteractor) {
        self.view = view
        self.wireframe = wireframe
        self.interactorOutput = interactor
    }
    func didClickButton(withTitle title: String) {
        interactorOutput?.getDataFor(type: title)
    }
    func didClickContinue() {
        wireframe?.continueCta()
    }
    func didClickClear() {
        view?.clearState()
    }
}

extension HomePresenter: HomeInteractorOutputProtocol {
    func viewLoaded() {
        view?.customizeViewsOnLoad()
    }
    func dataForButtonClicked(_ data: HomeScreenDataModel) {
        view?.updateState(forData: data)
    }
}
