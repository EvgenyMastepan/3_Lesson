//
//  ThirdController.swift
//  3_Lesson
//
//  Created by Evgeny Mastepan on 25.06.2025.
//

import UIKit

class ThirdController: UIViewController {
    private let indent: CGFloat = 15
    
    private lazy var logoImage = MarvelImageView(
        image: UIImage(named: "marvel"),
    )
    private lazy var heroesImage = MarvelImageView(
        image: UIImage(named: "ironman"),
        contentMode: .scaleAspectFit,
    )
    private lazy var navigationButton = MarvelButton(
        setImage: UIImage(systemName: "arrowshape.left.fill"),
        tintColor: .marvel,
        backgroundColor: .white,
        cornerRadius: 5,
    )
    private lazy var titulLabel = MarvelLabel(
        text: "Iron Man",
        font: UIFont.systemFont(ofSize: 23, weight: .bold)
    )
    private lazy var nameLabel = MarvelLabel(
        text: "Энтони Эдвард «Тони» Старк",
        font: UIFont.systemFont(ofSize: 14, weight: .heavy)
    )
    private lazy var describtionLabel = MarvelLabel(
        text: "Сын богатого промышленника Говарда Старка, Тони был гениальным изобретателем и механиком. Он унаследовал бизнес отца в возрасте 21 года, превратив компанию в одного из лидирующих производителей оружия. Старк был ранен осколком в грудь во время полевого испытания на пригодность боевой брони, которая должна была наделить солдат боевыми способностями. Старка взял в плен оружейный барон Wong Chu, вынудив его создать оружие массового поражения — только тогда Тони получил бы операцию, необходимую для спасения его жизни.",
    )
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        view.backgroundColor = .marvel
        view.addSubviews(logoImage, heroesImage, navigationButton, titulLabel, nameLabel, describtionLabel)
        arrangeSubViews()
        navigationAction()
    }
    private func arrangeSubViews() {
        self.logoImage.frame.origin.x = view.frame.minX + indent
        self.logoImage.frame.origin.y = view.frame.minY + 100
        self.logoImage.frame.size.width = 100
        self.logoImage.frame.size.height = 50
        
        self.navigationButton.frame.origin.x = view.frame.minX + indent
        self.navigationButton.frame.origin.y = view.frame.maxY - indent - 100
        self.navigationButton.frame.size.width = view.frame.maxX - 2 * indent
        self.navigationButton.frame.size.height = 50
        
        self.titulLabel.frame.origin.x = view.frame.minX + indent
        self.titulLabel.frame.origin.y = logoImage.frame.maxY + indent
        self.titulLabel.frame.size.height = 28
        self.titulLabel.frame.size.width = view.frame.maxX - 2 * indent
        
        self.heroesImage.frame.origin.x = view.frame.minX + indent
        self.heroesImage.frame.origin.y = logoImage.frame.maxY + indent
        self.heroesImage.frame.size.width = view.frame.maxX - 2 * indent
        self.heroesImage.frame.size.height = 400
        
        self.nameLabel.frame.origin.x = view.frame.minX + indent
        self.nameLabel.frame.origin.y = heroesImage.frame.maxY + indent
        self.nameLabel.frame.size.height = 12
        self.nameLabel.frame.size.width = view.frame.maxX - 2 * indent
        
        self.describtionLabel.frame.origin.x = view.frame.minX + indent
        self.describtionLabel.frame.origin.y = nameLabel.frame.maxY + indent
        self.describtionLabel.frame.size.height = 100
        self.describtionLabel.frame.size.width = view.frame.maxX - 2 * indent
        
    }
    
    private func navigationAction() {
        self.navigationButton.setAction { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
    }

}
