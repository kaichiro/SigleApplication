//
//  ViewControllerTela2.swift
//  SigleApplication
//
//  Created by Aluno on 23/03/2019.
//  Copyright © 2019 kaichiro. All rights reserved.
//

import UIKit

class ViewControllerTela2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func actnVoltar(_ sender: UIButton) {
        // Não executando nenhum código
        //dismiss(animated: true, completion: nil)
        
        // Executando algum código
        dismiss(animated: true) {
            print("voltando...")
        }
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
