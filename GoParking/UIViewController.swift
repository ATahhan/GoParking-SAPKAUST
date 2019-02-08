//
//  UIViewController.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 20/01/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    static func instantiateFromStorybaord<T>(_ storyBoard: UIStoryboard) -> T {
        return storyBoard.instantiateViewController(withIdentifier: String(describing: self)) as! T
    }
}

extension UIViewController {
    func showAlert(title: String, message: String, completion: (()->Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            completion?()
        }))
        present(alertController, animated: true, completion: nil)
    }
}

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func add(_ child: UIViewController, toSpecificViewInHierarchy view: UIView, withInsets insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) {
        addChild(child)
        view.addSubview(child.view)
        
        child.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.view.topAnchor.constraint(equalTo: view.topAnchor, constant: insets.top),
            child.view.leftAnchor.constraint(equalTo: view.leftAnchor, constant: insets.left),
            child.view.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -insets.right),
            child.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -insets.bottom)
            ])
        
        child.didMove(toParent: self)
    }
    
    func remove() {
        guard parent != nil else {
            return
        }
        
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}

extension UINavigationController {
    public func pushViewController(_ viewController: UIViewController,
                                   animated: Bool,
                                   completion: (() -> Void)?) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        pushViewController(viewController, animated: animated)
        CATransaction.commit()
    }
    
    func pushViewController(_ viewController: UIViewController, animated: Bool, emptyStack: Bool) {
        guard emptyStack else { pushViewController(viewController, animated: animated); return }
        navigationItem.hidesBackButton = true
        navigationItem.backBarButtonItem = nil
        self.viewControllers = []
        pushViewController(viewController, animated: animated) { [unowned self] in
            self.navigationItem.hidesBackButton = false
        }
    }
}
