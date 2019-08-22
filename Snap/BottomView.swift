//
//  BottomView.swift
//  Snap
//
//  Created by 张奥 on 2019/8/22.
//  Copyright © 2019年 张奥. All rights reserved.
//

import UIKit

class BottomView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func initSubViews() -> Void {
        //button1
        let trumpButon = UIButton()
        trumpButon.setImage(UIImage(named: "liveroom_sound_open"), for: UIControlState.normal)
        trumpButon.setImage(UIImage(named: "liveroom_sound_off"), for: UIControlState.selected)
        self.addSubview(trumpButon)
        trumpButon.addTarget(self, action: #selector(clickTrumpBtn(button:)), for: UIControlEvents.touchUpInside)
        
        //button2
        let micButton = UIButton()
        micButton.setImage(UIImage(named: "liveroom_sound_open"), for: UIControlState.normal)
        micButton.setImage(UIImage(named: "liveroom_sound_off"), for: UIControlState.selected)
        self.addSubview(micButton)
        
        //button3
        let speakButton = UIButton()
        speakButton.setImage(UIImage(named: "liveroom_speak"), for: UIControlState.normal)
        self.addSubview(speakButton)
        
        //button4
        let inviteButton = UIButton()
        inviteButton.setImage(UIImage(named: "liveroom_Invitefans"), for: UIControlState.normal)
        self.addSubview(inviteButton)
        
        //button5
        let emojiButton = UIButton()
        emojiButton.setImage(UIImage(named: "liveroom_expression"), for: UIControlState.normal)
        self.addSubview(emojiButton)
        
        
        let gitImg = UIImageView()
        gitImg.image = UIImage(named: "liveroom_gift")
        self.addSubview(gitImg)
        
        let label1 = UILabel()
        label1.text = "嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻"
        label1.font = UIFont.systemFont(ofSize: 13)
        label1.backgroundColor = UIColor.blue
        label1.textAlignment = NSTextAlignment.center
        label1.textColor = UIColor.white
        self.addSubview(label1)
        
        let label2 = UILabel()
        label2.text = "哈哈哈哈"
        label2.font = UIFont.systemFont(ofSize: 13)
        label2.backgroundColor = UIColor.red
        label2.textAlignment = NSTextAlignment.center
        label2.textColor = UIColor.white
        self.addSubview(label2)
        
        
        trumpButon.snp.makeConstraints { (make) in
            make.top.equalTo(self.snp.top).offset(8)
            make.leading.equalTo(self.snp.leading).offset(13)
            make.width.height.equalTo(35)
        }
        
        micButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(trumpButon)
            make.leading.equalTo(trumpButon.snp.trailing).offset(10)
            make.width.height.equalTo(35)
            
        }
        speakButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(trumpButon)
            make.leading.equalTo(micButton.snp.trailing).offset(10)
            make.width.height.equalTo(35)
        }
        inviteButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(trumpButon)
            make.leading.equalTo(speakButton.snp.trailing).offset(10)
            make.width.height.equalTo(35)
        }
        emojiButton.snp.makeConstraints { (make) in
            make.centerY.equalTo(trumpButon)
            make.leading.equalTo(inviteButton.snp.trailing).offset(10)
            make.width.height.equalTo(35)
        }
        gitImg.snp.makeConstraints { (make) in
            make.centerY.equalTo(trumpButon)
            make.trailing.equalTo(self.snp.trailing).offset(-13)
            make.width.height.equalTo(35)
        }
        label1.snp.makeConstraints { (make) in
            make.top.equalTo(trumpButon.snp.bottom).offset(3)
            make.leading.equalTo(self.snp.leading).offset(8)
            make.width.lessThanOrEqualTo(230)
        }
        label2.snp.makeConstraints { (make) in
            make.centerY.equalTo(label1)
            make.leading.equalTo(label1.snp.trailing).offset(5)
            make.trailing.equalTo(self.snp.trailing).offset(-8)
        }
        
    }
    
   @objc func clickTrumpBtn(button:UIButton) -> Void {
        button.isSelected = !button.isSelected
    }

}
