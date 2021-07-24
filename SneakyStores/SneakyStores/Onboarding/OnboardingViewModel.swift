//
//  OnboardingViewModel.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//

import Foundation

class OnboardingViewModel {
var slides: [OnboardingSlides] = []
var updateButton: ((String, Int) -> Void)?
var currentPage = 0 {
    didSet {
        if currentPage == slides.count - 1 {
            updateButton? ("Start Now", currentPage)
        } else {
            updateButton?("Next",currentPage)
        }
    }
}

    init() {
        slides = [
            OnboardingSlides(image: #imageLiteral(resourceName: "nike1"), title: "Get Quality Sneakers Delivered at Your Doorstep", description: "You are addressed the way you dress. Get the best quality sneakers at affordable prices so you can blend with the trend."),
            OnboardingSlides(image: #imageLiteral(resourceName: "nike2"), title: "Let the journey start", description: "Find the best pair to fit your lifestyle and fulfill your life")
        ]
    }
}
