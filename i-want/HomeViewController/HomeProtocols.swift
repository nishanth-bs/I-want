//
//  HomeViewControllerProtocols.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import Foundation

protocol HomeWireframeProtocol: class {
    var view: HomeViewController? { get set }
    func continueCta()
}
protocol HomePresenterProtocol: class {
    var view: HomeViewProtocol? { get set }
    var interactorOutput: HomeInteractorInputProtocol? { get set }
    var wireframe: HomeWireframeProtocol? { get set }
    
    func viewLoaded()
    func didClickButton(withTitle title: String)
    func didClickContinue()
    func didClickClear()
}
protocol HomeViewProtocol: class {
    var presenterOutput: HomePresenterProtocol? { get set }
    func updateState(forData data: HomeScreenDataModel)
    func clearState()
    func customizeViewsOnLoad()
}
protocol HomeInteractorInputProtocol: class {
    var interactorOutput: HomeInteractorOutputProtocol? { get set }
    func getDataFor(type title: String)
}
protocol HomeInteractorOutputProtocol: class {
    func dataForButtonClicked(_ data: HomeScreenDataModel)
}
