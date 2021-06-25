//
//  IniciarSesionViewController.swift
//  Snapchat
//
//  Created by Ruth Carbajal on 6/24/21.
//  Copyright © 2021 Ruth Carbajal. All rights reserved.
//
import Firebase
import UIKit

class IniciarSesionViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentamos Iniciar Sesiòn")
            if error != nil {
                print("Tenemos el siguiente error:\(error)")
                Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                    print("Intentamos crear un usuario")
                    if error != nil{
                        print("Tenemos el siguiente error:\(error)")
                    }else{
                        print("El usuario fue creado exitosamente")
                       
                        self.performSegue(withIdentifier: "iniciarsesionsegue", sender: nil)
                    
                    }
                }
                
                
            }else{
                print("Inicio de Sesion exitoso")
                self.performSegue(withIdentifier: "iniciarsesionsegue", sender: nil)
            }
        }
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
