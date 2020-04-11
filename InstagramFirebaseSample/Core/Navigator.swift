//
//  Navigator.swift
//  InstagramFirebaseSample
//
//  Created by Insu Park on 2020/04/08.
//  Copyright © 2020 inswag. All rights reserved.
//

import Foundation
import UIKit

protocol Navigatable {
    var navigator: Navigator! { get set }
}

class Navigator {
    
    static var `default` = Navigator()

    // MARK: - segues list, all app scenes
    
    enum Scene {
        case tabs(viewModel: TabBarViewModel)
    }
    
    enum Transition {
        case root(in: UIWindow)
//        case navigation(type: HeroDefaultAnimationType)
//        case customModal(type: HeroDefaultAnimationType)
//        case modal
//        case detail
//        case alert
//        case custom
    }
    
    // MARK: - get a single VC
    
    func get(segue: Scene) -> UIViewController {
        switch segue {
        case .tabs(let viewModel):
            let rootVC = TabBarViewController(viewModel: viewModel, navigator: self)
            let splitVC = UISplitViewController()
            splitVC.viewControllers = [rootVC]
            return splitVC
        }
    }
    
    func push(sender: UIViewController?, destination: UIViewController) {
        sender?.navigationController?.pushViewController(destination, animated: true)
    }
        
    func pop(sender: UIViewController?, toRoot: Bool = false) {
        if toRoot {
            sender?.navigationController?.popToRootViewController(animated: true)
        } else {
            sender?.navigationController?.popViewController(animated: true)
        }
    }

    func dismiss(sender: UIViewController?) {
        sender?.navigationController?.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - invoke a single segue
//    func show(segue: Scene, sender: UIViewController?, transition: Transition = .navigation(type: .cover(direction: .left))) {
//        if let target = get(segue: segue) {
//            show(target: target, sender: sender, transition: transition)
//        }
//    }

//    private func show(target: UIViewController, sender: UIViewController?, transition: Transition) {
//        switch transition {
//        case .root(in: let window):
//            UIView.transition(with: window, duration: 0.5, options: .transitionFlipFromLeft, animations: {
//                window.rootViewController = target
//            }, completion: nil)
//            return
//        case .custom: return
//        default: break
//        }
//
//        guard let sender = sender else {
//            fatalError("You need to pass in a sender for .navigation or .modal transitions")
//        }
//
//        if let nav = sender as? UINavigationController {
//            //push root controller on navigation stack
//            nav.pushViewController(target, animated: false)
//            return
//        }
//
//        switch transition {
//        case .navigation(let type):
//            if let nav = sender.navigationController {
//                // push controller to navigation stack
//                nav.hero.navigationAnimationType = .autoReverse(presenting: type)
//                nav.pushViewController(target, animated: true)
//            }
//        case .customModal(let type):
//            // present modally with custom animation
//            DispatchQueue.main.async {
//                let nav = NavigationController(rootViewController: target)
//                nav.hero.modalAnimationType = .autoReverse(presenting: type)
//                sender.present(nav, animated: true, completion: nil)
//            }
//        case .modal:
//            // present modally
//            DispatchQueue.main.async {
//                let nav = NavigationController(rootViewController: target)
//                sender.present(nav, animated: true, completion: nil)
//            }
//        case .detail:
//            DispatchQueue.main.async {
//                let nav = NavigationController(rootViewController: target)
//                sender.showDetailViewController(nav, sender: nil)
//            }
//        case .alert:
//            DispatchQueue.main.async {
//                sender.present(target, animated: true, completion: nil)
//            }
//        default: break
//        }
//    }
//
//    func toInviteContact(withPhone phone: String) -> MFMessageComposeViewController {
//        let vc = MFMessageComposeViewController()
//        vc.body = "Hey! Come join SwiftHub at \(Configs.App.githubUrl)"
//        vc.recipients = [phone]
//        return vc
//    }
        
}
