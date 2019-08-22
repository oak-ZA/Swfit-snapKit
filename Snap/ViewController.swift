//
//  ViewController.swift
//  Snap
//
//  Created by 张奥 on 2019/8/22.
//  Copyright © 2019年 张奥. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var animationOne : AnimationViewOne?
    var animationTwo : AnimationViewOne?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bottomView = BottomView()
        bottomView.backgroundColor = UIColor.black
        self.view.addSubview(bottomView)
        bottomView.snp.makeConstraints { (make) in
            make.bottom.trailing.leading.equalTo(self.view)
            make.height.equalTo(120)
        }
        self.view.layoutIfNeeded()
        
        
        let button1 = UIButton()
        button1.setTitle("动画一", for: UIControlState.normal)
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button1.setTitleColor(UIColor.white, for: UIControlState.normal)
        button1.backgroundColor = UIColor.red
        self.view.addSubview(button1)
        button1.addTarget(self, action: #selector(clickButton1(button:)), for: UIControlEvents.touchUpInside)
        button1.snp.makeConstraints { (make) in
            make.leading.equalTo(self.view.snp.leading).offset(80)
            make.top.equalTo(self.view.snp.top).offset(150)
            make.width.height.equalTo(80)
        }
        
        let button2 = UIButton()
        button2.setTitle("动画二", for: UIControlState.normal)
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button2.setTitleColor(UIColor.white, for: UIControlState.normal)
        button2.backgroundColor = UIColor.red
        self.view.addSubview(button2)
        button2.addTarget(self, action: #selector(clickButton2(button:)), for: UIControlEvents.touchUpInside)
        button2.snp.makeConstraints { (make) in
            make.leading.equalTo(button1.snp.trailing).offset(20)
            make.top.equalTo(self.view.snp.top).offset(150)
            make.width.height.equalTo(80)
        }
        
        
    }

   @objc func clickButton1(button:UIButton) -> Void {
    
    let animationOne = AnimationViewOne()
    self.animationOne = animationOne
    self.view.addSubview(animationOne)
    animationOne.snp.makeConstraints { (make) in
        make.center.equalTo(self.view)
        make.height.equalTo(50)
        make.width.equalTo(0)
    }
    self.view.layoutIfNeeded()
    UIView.animate(withDuration: 0.5, animations: {
        animationOne.snp.updateConstraints({ (make) in
            make.width.equalTo(self.view.bounds.size.width - 40)
        })
        self.view.layoutIfNeeded()
    }) { (Bool) in
        self.perform(#selector(self.disMissView), with: self, afterDelay: 1)
    }
    
    }
    @objc func clickButton2(button:UIButton) -> Void {
        
        let animationOne = AnimationViewOne()
        self.animationTwo = animationOne
        animationOne.layer.cornerRadius = 25.0
        animationOne.layer.masksToBounds = true
        animationOne.alpha = 0;
        self.view.addSubview(animationOne)
        animationOne.snp.makeConstraints { (make) in
            make.top.equalTo(self.view.bounds.size.height/2 + 10)
            make.leading.equalTo(self.view.snp.leading).offset(20)
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 0.3, animations: {
            animationOne.alpha = 1;
            animationOne.snp.updateConstraints({ (make) in
                make.top.equalTo(self.view.bounds.size.height/2 - 50)
            })
            self.view.layoutIfNeeded()
        }) { (Bool) in
            self.perform(#selector(self.disMissView), with: self, afterDelay: 1)
        }
        
    }
    
    @objc  func disMissView() -> Void {
        self.animationOne?.removeFromSuperview()
        self.animationTwo?.removeFromSuperview()
        self.animationOne = nil
        self.animationTwo = nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

