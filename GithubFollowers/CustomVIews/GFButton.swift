//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Shreyas Sahoo on 01/08/24.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        //first calling all the init funcitions in the super class
        super.init(frame: frame)
        //custom code
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor : UIColor , title : String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        
        translatesAutoresizingMaskIntoConstraints = false
        //to be set when ever , we are making a button , programmatically

    }
}
