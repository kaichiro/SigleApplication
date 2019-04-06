//
//  ViewController.swift
//  SigleApplication
//
//  Created by Aluno on 23/03/2019.
//  Copyright © 2019 kaichiro. All rights reserved.
//

import UIKit

class ViewControllerTela1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var olSwitch: UISwitch!
    
    
    @IBAction func actnSwitch(_ sender: Any) {
        PersistenceManager.save(value: olSwitch.isOn)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        olSwitch.isOn = PersistenceManager.getValue()
    }
    
    @IBAction func handleLogoff(_ sender: UIButton) {
        let alert = UIAlertController(title: "AStenção", message: "Deseja mesmo sair:", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "sim", style: .default, handler:{
            (UIAlertAction) in self.dismiss(animated:true,completion:nil)
            }))
        alert.addAction(UIAlertAction(title: "Não", style: .cancel, handler: nil))
        self.present(alert,animated: true,completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func proximaTelaModal(_ sender: UIButton) {
        // Obtem ref para a próxima tela. Objs visuais ainda não foram criados na próxima tela
        let proximaTela = storyboard?.instantiateViewController(withIdentifier: "tela2") as! ViewControllerTela2
        
        // Atribuindo estilo de transição
        proximaTela.modalTransitionStyle = .flipHorizontal
        
        // Executa a transição de telas
        self.present(proximaTela, animated: true, completion: nil)
    }
    
    // Método para indicar que uma SEGUE está prestes a ser executada
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueModal")
        {
            print("segueModal")
        }
    }
    
}

