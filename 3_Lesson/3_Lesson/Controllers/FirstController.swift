//
//  ViewController.swift
//  3_Lesson
//
//  Created by Evgeny Mastepan on 24.06.2025.
//

import UIKit

class FirstController: UIViewController {
    private let indent: CGFloat = 15
    
    private lazy var logoImage = MarvelImageView(
        image: UIImage(named: "marvel"),
    )
    private lazy var heroesImage = MarvelImageView(
        image: UIImage(named: "heroes"),
        contentMode: .scaleAspectFit,
    )
    private lazy var navigationButton = MarvelButton(
        setImage: UIImage(systemName: "arrowshape.bounce.right.fill"),
        tintColor: .marvel,
        backgroundColor: .white,
        cornerRadius: 5,
        
    )
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .marvel
        navigationController?.navigationBar.tintColor = .white
        view.addSubviews(logoImage, heroesImage, navigationButton)
        arrangeSubViews()
        navigationAction()
    }
    private func arrangeSubViews() {
        self.logoImage.frame.origin.x = view.frame.minX + indent
        self.logoImage.frame.origin.y = view.frame.minY + 100
        self.logoImage.frame.size.width = 100
        self.logoImage.frame.size.height = 50
        
        self.navigationButton.frame.origin.x = view.frame.maxX - indent - 100
        self.navigationButton.frame.origin.y = logoImage.frame.midY - 15
        self.navigationButton.frame.size.width = 100
        self.navigationButton.frame.size.height = 30
        
        self.heroesImage.frame.origin.x = view.frame.minX + indent
        self.heroesImage.frame.origin.y = logoImage.frame.maxY + indent
        self.heroesImage.frame.size.width = view.frame.maxX - 2 * indent
        self.heroesImage.frame.size.height = 200
        
    }
    
    private func navigationAction() {
        self.navigationButton.setAction { [weak self] in
            let secondVC = SecondController()
            self?.navigationController?.pushViewController(secondVC, animated: true)
        }
    }

    
}

