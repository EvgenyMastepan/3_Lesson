//
//  Classes.swift
//  3_Lesson
//
//  Created by Evgeny Mastepan on 25.06.2025.
//

import UIKit

final class MarvelImageView: UIImageView {
    init(
        image: UIImage? = nil,
        contentMode: UIView.ContentMode = .scaleToFill,
        cornerRadius: CGFloat = 0,
        clipsToBounds: Bool = true,
        tintColor: UIColor? = nil,
    ) {
        super.init(frame: .zero)
        
        self.image = image
        self.contentMode = contentMode
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = clipsToBounds
        self.tintColor = tintColor
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class MarvelButton: UIButton {
    private var action: (() -> Void)?
    
    init(
        title: String? = nil,
        titleColor: UIColor = .white,
        font: UIFont = .systemFont(ofSize: 16, weight: .medium),
        setImage: UIImage? = nil,
        tintColor: UIColor? = nil,
        backgroundColor: UIColor = .systemBlue,
        cornerRadius: CGFloat = 20,
        tapHandler: ((UIAction) -> Void)? = nil
    ){
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = font
        self.setImage(setImage, for: .normal)
        self.tintColor = tintColor
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        
        self.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
       
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setAction(_ action: @escaping () -> Void) {
        self.action = action
    }
    
    @objc private func didTapButton() {
        action?()
    }
    
}

final class MarvelLabel: UILabel {
    init(
        text: String? = nil,
        font: UIFont = .systemFont(ofSize: 14, weight: .regular),
        textColor: UIColor = .white,
        textAligment: NSTextAlignment = .left,
    ) {
        super.init(frame: .zero)
        
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAligment
        self.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
