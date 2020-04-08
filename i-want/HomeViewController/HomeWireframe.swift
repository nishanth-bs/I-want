//
//  HomeWireframe.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import UIKit

final class HomeWireframe: HomeWireframeProtocol {
    weak var view: HomeViewController?
    static func show(onVc: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as? HomeViewController else { return }
        let router = HomeWireframe()
        let interactor = HomeInteractor()
        let presenter = HomePresenter.init(view: vc, wireframe: router, interactor: interactor)
        router.view = vc
        interactor.interactorOutput = presenter
        vc.presenterOutput = presenter
        onVc.show(vc, sender: onVc)
    }
    
    static func instantiateVC() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "HomeViewController") as? HomeViewController else { return UIViewController() }
        let router = HomeWireframe()
        let interactor = HomeInteractor()
        let presenter = HomePresenter.init(view: vc, wireframe: router, interactor: interactor)
        router.view = vc
        interactor.interactorOutput = presenter
        vc.presenterOutput = presenter
        return vc
    }
    func continueCta() {
        guard let vc = view else { return }
        HomeDetailWireframe.load(onVc: vc, type: vc.answerLbl.text ?? "")
    }
}
