//
//  AnimationViewOne.swift
//  Snap
//
//  Created by 张奥 on 2019/8/22.
//  Copyright © 2019年 张奥. All rights reserved.
//

import UIKit

class AnimationViewOne: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.red
        self.initSubViews()
    }
    
    func initSubViews() -> Void {
        
        let label = UILabel()
        label.text = "准备环节开始"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textAlignment = NSTextAlignment.center
        label.textColor = UIColor.white
        self.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.center.equalTo(self)
        }
        
    }

}
