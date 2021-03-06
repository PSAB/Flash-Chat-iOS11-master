//
// 


import UIKit
import Firebase


class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print("issues with signing in: \(error!.localizedDescription)")
            }
            else {
                print("sign in successful")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
    }
    
    


    
}  
