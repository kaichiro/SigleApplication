//
//  ViewControllerLogin.swift
//  SigleApplication
//
//  Created by Aluno on 05/04/2019.
//  Copyright © 2019 kaichiro. All rights reserved.
//

import UIKit

class ViewControllerLogin: UIViewController {

    @IBOutlet weak var olLogin: UITextField!
    @IBOutlet weak var olSenha: UITextField!
    
    @IBAction func TestaCredenciais(_ sender: UIButton) {
        if (olSenha.text == "123")
        {
            let viewControllerTab = storyboard!.instantiateViewController(withIdentifier: "tbCtrl") as! UITabBarController
            
            self.present(viewControllerTab, animated: true, completion: nil)
        }
        else
        {
            let alert = UIAlertController(title: "Atenção", message: "Usuário ou senha inválidos", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
