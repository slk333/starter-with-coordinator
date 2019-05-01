import UIKit


// mission: chef d'orchestre, réalisateur. Décide quelle scène apparaît à l'écran.
// décide concrètement quel scène va être push par le navigationController
// il va travailler avec le navigationController
// tant que le coordinator n'a rien fait, rien ne se passe, le navigation controller ne push aucune scène lui même

class Coordinator{
    
    var navigationController : UINavigationController!
    
    
    
    
    init(navigationController:UINavigationController) {
       self.navigationController = navigationController
    }
    
    
    func startTheFlow(){
        // get the first ViewController, and push it
        // create the VC with the Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        // the VC is created using the blueprint with identifier present on the SB
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        // the first viewController is displayed instantaneously, no animation
        navigationController.pushViewController(vc, animated: false)
        
        
        
    }
    
    
}
