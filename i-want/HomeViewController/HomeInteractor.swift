//
//  HomeInteractor.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import Foundation

final class HomeInteractor: HomeInteractorInputProtocol {
    var interactorOutput: HomeInteractorOutputProtocol?
    func getDataFor(type title: String) {
        let data = HomeScreenDataModel.init(title: title)
        interactorOutput?.dataForButtonClicked(data)
    }
}
