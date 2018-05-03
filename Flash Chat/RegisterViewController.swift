//

//

import UIKit
import Firebase


class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        

        
        //TODO: Set up a new user on our Firbase database
        //The callback parameter tells us whether the process was successful or not, if there were any errors PRESS ENTER
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print("There's an error here: " + error!.localizedDescription)
                // use condiitonal based on localizedDescription if exiting account is used to register. 
            }
                else {
                print("Registration successful")
                // transition to to the chat view controller if registration was successful. 
                self.performSegue(withIdentifier: "goToChat", sender: self)
                }
            }
        
        
        }
        

        
        
    } 
    
    

