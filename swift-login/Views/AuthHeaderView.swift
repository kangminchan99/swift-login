//
//  AuthHeaderView.swift
//  swift-login
//
//  Created by minchan on 2023/11/24.
//

import UIKit

class AuthHeaderView: UIView {
    
    // MARK: - UI components
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        // 이미지 가져오기
        iv.image = UIImage(systemName: "yeji")
        iv.tintColor = .white
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.text = "Yeji"
        return label
    }()

    
    private let subtTtleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.text = "Yeji"
        return label
    }()
    
    
    
    // MARK: - LifeCycle
    init(title: String, subTitle: String){
        super.init(frame: .zero)
        self.titleLabel.text = title
        self.subtTtleLabel.text = subTitle
        
        self.setupUI()
        
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI setup
    private func setupUI() {
        self.addSubview(logoImageView)
        self.addSubview(titleLabel)
        self.addSubview(subtTtleLabel)
        
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtTtleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.logoImageView.topAnchor.constraint(equalTo: self.layoutMarginsGuide.topAnchor, constant: 16),
            self.logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 90),
            self.logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor)
            
                                     
            ])
    }
}
