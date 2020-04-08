//
//  HomeDetailWireframe.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import UIKit

final class HomeDetailWireframe: HomeDetailWireframeProtocol {
    weak var viewcontroller: UIViewController?
    static func load(onVc viewcont: UIViewController, type: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "HomeDetailViewController") as? HomeDetailViewController else { return }
        vc.type = type
        let interactor: HomeDetailInteractor = HomeDetailInteractor()
        let router: HomeDetailWireframe = HomeDetailWireframe()
        let presenter: HomeDetailPresenter = HomeDetailPresenter.init(view: vc, wireframe: router, interactor: interactor)
        vc.presenterOutput = presenter
        interactor.interactorOutput = presenter
        router.viewcontroller = vc
        viewcont.show(vc, sender: viewcont)
    }
    
    func backCta() {
        guard let vc = viewcontroller else { return }
        guard let navCont = vc.navigationController else {
            vc.dismiss(animated: true, completion: nil)
            return
        }
        navCont.popViewController(animated: true)
    }
}
