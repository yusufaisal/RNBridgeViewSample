//
//  SwitchView.swift
//  SwitchApp
//
//  Created by iSal on 08/05/20.
//

import UIKit

class SwitchView: UIView {
  
  @objc var isOn: Bool = false  {
    didSet {
          button.backgroundColor = isOn ? .yellow : .black
          button.setTitle(String(describing: isOn ? "I am ON" : "I am OFF"), for: .normal)
     }
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(button)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init has not been implemented")
  }
  
  lazy var button: UIButton = {
      let button = UIButton.init(type: UIButton.ButtonType.system)
      button.autoresizingMask = [.flexibleWidth, .flexibleHeight]
      button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
      button.addTarget(
        self,
        action: #selector(toggleSwitchStatus),
        for: .touchUpInside
      )
      return button
    }()
  
  @objc func toggleSwitchStatus() {
    self.isOn = !self.isOn
  }
}

