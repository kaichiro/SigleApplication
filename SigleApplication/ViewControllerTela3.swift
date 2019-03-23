//
//  ViewControllerTela3.swift
//  SigleApplication
//
//  Created by Aluno on 23/03/2019.
//  Copyright © 2019 kaichiro. All rights reserved.
//

import UIKit

class ViewControllerTela3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Main Form"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // PUSH via código
    @IBAction func callOtherFormPUSH(_ sender: UIButton) {
        let proximaTela = storyboard?.instantiateViewController(withIdentifier: "tela4") as! ViewControllerTela4
        
        // Chamando a próxima tela de forma animada (transição) por PUSH
        self.navigationController?.pushViewController(proximaTela, animated: true)
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
