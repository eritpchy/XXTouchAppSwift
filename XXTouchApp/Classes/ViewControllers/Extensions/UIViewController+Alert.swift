//
//  UIViewController+Alert.swift
//  OneFuncApp
//
//  Created by mcy on 16/6/15.
//  Copyright © 2016年 mcy. All rights reserved.
//

import UIKit

extension UIViewController {
  func alert(title title: String?, message: String?, delegate: AnyObject?, cancelButtonTitle: String?) {
    let alertView = UIAlertView(title: title, message: message, delegate: delegate, cancelButtonTitle: cancelButtonTitle)
    alertView.show()
  }
  
  func alertOther(title title: String, message: String, delegate: UIAlertViewDelegate?, cancelButtonTitle: String?, otherButtonTitles: String, tag: Int = 0) {
    let alertView = UIAlertView()
    alertView.tag = tag
    alertView.title = title
    alertView.message = message
    alertView.delegate = delegate
    alertView.addButtonWithTitle(otherButtonTitles)
    alertView.addButtonWithTitle(cancelButtonTitle)
    alertView.show()
  }
  
  func alertNothing(title title: String, message: String) -> UIAlertView {
    //    let alertView = UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: nil)
    let alertView = UIAlertView()
    alertView.title = title
    alertView.message = message
    alertView.show()
    return alertView
  }
}

extension UIResponder {
  func alertOtherApp(title title: String, message: String, delegate: UIAlertViewDelegate?, cancelButtonTitle: String?, otherButtonTitles: String, tag: Int = 0) {
    let alertView = UIAlertView()
    alertView.tag = tag
    alertView.title = title
    alertView.message = message
    alertView.delegate = delegate
    alertView.addButtonWithTitle(otherButtonTitles)
    alertView.addButtonWithTitle(cancelButtonTitle)
    alertView.show()
  }
}
