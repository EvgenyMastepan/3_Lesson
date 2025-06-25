//
//  SecondController.swift
//  3_Lesson
//
//  Created by Evgeny Mastepan on 25.06.2025.
//

import UIKit

class SecondController: UIViewController {
    private let indent: CGFloat = 15
    
    private lazy var logoImage = MarvelImageView(
        image: UIImage(named: "marvel"),
    )

    private lazy var titulLabel = MarvelLabel(
        text: "The characters of the Marvel universe help us learn the Swift.",
        font: UIFont.systemFont(ofSize: 23, weight: .bold)
    )
    private lazy var subTitulLabel = MarvelLabel(
        text: "Who are you without your costume?",
        font: UIFont.systemFont(ofSize: 13, weight: .bold),
        textColor: .marvel
    )
    private lazy var describtionLabel = MarvelLabel(
        text: "There's some text here about how the characters of the Marvel universe can help us understand navigation in the iOS system.",
        font: UIFont.systemFont(ofSize: 13, weight: .regular),
        textColor: .marvel
    )
    private lazy var inView = UIView()
    private lazy var manImage = MarvelImageView(
        image: UIImage(named: "ironRocket"),
        cornerRadius: 10
    )
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.backgroundColor = .marvel
        upRightButton()
        view.addSubviews(logoImage, titulLabel, inView, manImage, subTitulLabel, describtionLabel)
        arrangeSubViews()

    }
    private func arrangeSubViews() {
        self.logoImage.frame.origin.x = view.frame.minX + indent
        self.logoImage.frame.origin.y = view.frame.minY + 100
        self.logoImage.frame.size.width = 100
        self.logoImage.frame.size.height = 50
        
        self.titulLabel.frame.origin.x = view.frame.minX + indent
        self.titulLabel.frame.origin.y = logoImage.frame.maxY + indent
        self.titulLabel.frame.size.height = 56
        self.titulLabel.frame.size.width = view.frame.maxX - 2 * indent
        
        self.inView.frame.origin.x = view.frame.minX + indent
        self.inView.frame.origin.y = titulLabel.frame.maxY + indent
        self.inView.frame.size.height = 150
        self.inView.frame.size.width = view.frame.maxX - 2 * indent
        self.inView.backgroundColor = .white
        
        self.subTitulLabel.frame.origin.x = inView.frame.minX + indent
        self.subTitulLabel.frame.origin.y = inView.frame.minY + indent
        self.subTitulLabel.frame.size.height = 12
        self.subTitulLabel.frame.size.width = inView.frame.maxX - 2 * indent
        
        self.describtionLabel.frame.origin.x = inView.frame.minX + indent
        self.describtionLabel.frame.origin.y = subTitulLabel.frame.maxY + indent
        self.describtionLabel.frame.size.height = 150 - 12 - 4 * indent
        self.describtionLabel.frame.size.width = inView.frame.maxX - 2 * indent
        
        self.manImage.frame.origin.x = view.frame.minX + indent
        self.manImage.frame.origin.y = inView.frame.maxY + indent
        self.manImage.frame.size.width = view.frame.maxX - 2 * indent
        self.manImage.frame.size.height = 200
        
    }
    

    
    private func upRightButton() {
        let upRightBtn = UIBarButtonItem(barButtonSystemItem: .fastForward, target: self, action: #selector(rightBtnAction))
        navigationItem.rightBarButtonItem = upRightBtn
    }
    
    @objc func rightBtnAction() {
        let thirdVC = ThirdController()
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }

    
}
