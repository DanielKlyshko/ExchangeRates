//
//  SceneDelegate.swift
//  ExchangeRates
//
//  Created by Daniel Klyshko on 16.01.24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        window.rootViewController = ViewController()
       
        self.window = window
        window.makeKeyAndVisible()
    }

}

