//
//  SecondViewController.swift
//  NavigationControllerAndNavigationBar
//
//  Created by Palliboina on 12/04/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func closeView(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationItem.title = "Second"
        //navigationItem.largeTitleDisplayMode = .never
        
        /*let backBtn = UIBarButtonItem(title:"Close")
        backBtn.tintColor = .systemGreen
        navigationItem.backBarButtonItem = backBtn*/
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
