//
//  ViewController.swift
//  NavigationControllerAndNavigationBar
//
//  Created by Palliboina on 12/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var container = AttributeContainer()
        container.font = UIFont.preferredFont(forTextStyle: .title1)
        //container.foregroundColor = UIColor.white
        
        let btnAppearance = UIBarButtonItemAppearance()
        if let keys = try? Dictionary(container, including: \.uiKit){
            //btnAppearance.normal.titleTextAttributes = keys
            //btnAppearance.focused.titleTextAttributes = keys
            btnAppearance.highlighted.titleTextAttributes = keys
        }
        
        let standard = UINavigationBarAppearance()
        standard.backgroundColor = .systemGray4
        /*if let keys = try? Dictionary(container,including: \.uiKit) {
            standard.titleTextAttributes = keys
        }*/
        
        standard.backButtonAppearance = btnAppearance
        standard.setBackIndicatorImage(UIImage(systemName: "arrow.backward.circle"), transitionMaskImage: UIImage(systemName: "arrow.forward.circle"))
        
        let compact = UINavigationBarAppearance()
        compact.backgroundColor = .yellow
        
        var bar = navigationController?.navigationBar
        bar?.scrollEdgeAppearance = standard
        bar?.compactScrollEdgeAppearance = compact
        
        //navigationController?.hidesBarsOnTap = true
        
        let delBtn = UIBarButtonItem(image:UIImage(systemName: "trash"),primaryAction: UIAction(handler: { action in
            print("Button pressed")
        }))
        
        delBtn.tintColor = UIColor.systemRed
        navigationItem.rightBarButtonItems = [delBtn]
        
        ///toolbar
        
        let toolbarStandard = UIToolbarAppearance()
        toolbarStandard.backgroundColor = .green
        navigationController?.toolbar.scrollEdgeAppearance = toolbarStandard
        
        let btnInToolbar = UIBarButtonItem(image:UIImage(systemName:"trash"),primaryAction: UIAction(handler: {action in
            print("Btn in toolbar pressed")
        }))
        btnInToolbar.tintColor = UIColor.systemRed
        self.setToolbarItems([btnInToolbar], animated: true)
        
                                     
        
    }


}

