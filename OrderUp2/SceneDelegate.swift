//
//  SceneDelegate.swift
//  OrderUp2
//
//  Created by Jody Abney on 7/22/20.
//  Copyright © 2020 AbneyAnalytics. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView(availableItems: [
        ShopItem(price: 24.99, id: 1, name: "Turkey",
                 imageName: "turkey", categoryID: 1),
        ShopItem(price: 1.99, id: 2, name: "Hot Drink",
                 imageName: "takeaway_hot_drink", categoryID: 2),
        ShopItem(price: 0.99, id: 3, name: "Asparagus",
                 imageName: "asparagus", categoryID: 4),
        ShopItem(price: 0.49, id: 4, name: "Beetroot", imageName: "beetroot", categoryID: 4),
        ShopItem(price: 0.49, id: 5, name: "Boletus Mushroom", imageName: "boletus_mushroom", categoryID: 4),
        ShopItem(price: 0.99, id: 6, name: "Cherry Donut", imageName: "cherry_donut", categoryID: 3),
        ShopItem(price: 0.25, id: 7, name: "Chili Pepper", imageName: "chili_pepper", categoryID: 4),
        ShopItem(price: 3.99, id: 8, name: "Chinese Noodle", imageName: "chinese_noodle", categoryID: 10),
        ShopItem(price: 1.49, id: 9, name: "Chips", imageName: "chips", categoryID: 5),
        ShopItem(price: 1.49, id: 10, name: "Fries", imageName: "fries", categoryID: 5),
        ShopItem(price: 4.99, id: 11, name: "Gammon", imageName: "gammon", categoryID: 2),
        ShopItem(price: 9.99, id: 12, name: "Italian Pizza",
                 imageName: "italian_pizza", categoryID: 6),
        ShopItem(price: 3.49, id: 13, name: "Lemon Cake",
                 imageName: "lemon_cake", categoryID: 3),
        ShopItem(price: 0.49, id: 14, name: "Pears", imageName: "pears", categoryID: 7),
        ShopItem(price: 17.99, id: 15, name: "Salmon", imageName: "salmon", categoryID: 8),
        ShopItem(price: 5.99, id: 16, name: "Sandwich with Fried Egg", imageName: "sandwich_with_fried_egg", categoryID: 9),
        ShopItem(price: 9.99, id: 17, name: "Street Food",
                 imageName: "street_food", categoryID: 11),
        ShopItem(price: 0.99, id: 18, name: "Sweet Carrots",
                 imageName: "sweet_carrot", categoryID: 4),
        ShopItem(price: 1.99, id: 19, name: "Tomato and Garlic",
                 imageName: "tomato_and_garlic", categoryID: 4)
        ])

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

