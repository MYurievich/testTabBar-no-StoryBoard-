//
//  ViewController.swift
//  Test
//
//  Created by Максим on 18.07.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()


        let scheludeNav = UINavigationController(rootViewController: Schelude())
        scheludeNav.tabBarItem = UITabBarItem(title: "Schelude", image: UIImage(systemName: "calendar.badge.clock"), tag: 0)
        
        
        let tasks = UINavigationController(rootViewController: Tasks())
        tasks.tabBarItem = UITabBarItem(title: "Tasks", image: UIImage(systemName: "text.badge.checkmark"), tag: 1)
        
        let contacts = UINavigationController(rootViewController: Contacts())
        contacts.tabBarItem = UITabBarItem(title: "Contacts", image: UIImage(systemName: "rectangle.stack.person.crop"), tag: 2)
        
    viewControllers = [scheludeNav, tasks, contacts]
    }


    
}

class Schelude: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Schelude"
        view.backgroundColor = .blue
    }
    
}

class Tasks: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
}

class Contacts: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
    
}
