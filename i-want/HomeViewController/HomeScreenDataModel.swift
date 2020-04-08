//
//  HomeScreenDataModel.swift
//  ImageSlider
//
//  Created by Nishanth B S  on 08/04/20.
//  Copyright © 2020 Nishanth B S . All rights reserved.
//

import Foundation

enum Titles: String, CaseIterable {
    case pet = "a pet"
    case plant = "a plant"
    case book = "a book"
    static func withString(_ text: String) -> Titles? {
        return self.allCases.first{ "\($0)" == text }
    }
}

final class HomeScreenDataModel {
    let title: Titles
    let subtitle: String
    init(title: String) {
        self.title = Titles.withString(title) ?? .pet
        switch self.title {
        case .pet   :    self.subtitle = "It needs food and love."
        case .plant :    self.subtitle = "It needs water and sunlight."
        case .book  :    self.subtitle = "It needs patience and intellect."
        }
    }
}
