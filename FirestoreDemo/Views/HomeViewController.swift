//
//  HomeViewController.swift
//  FirestoreDemo
//
//  Created by othman shahrouri on 11/7/21.
//

import UIKit

class HomeViewController: UIViewController {
    //set background
//    var imageView: UIImageView = {
//        let imageView = UIImageView(frame: .zero)
//        imageView.image = UIImage(named: "greenBG")
//        imageView.contentMode = .scaleToFill
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        return imageView
//    }()

    var accountType:Int!
    @IBOutlet var defaultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundImage("greenBG", contentMode: .scaleAspectFit)

        //remove back word from navigation button item
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)


        
        
//        view.insertSubview(imageView, at: 0)
//        NSLayoutConstraint.activate([
//            imageView.topAnchor.constraint(equalTo: view.topAnchor),
//            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
        
        
        
        let defaults = UserDefaults.standard
        defaultLabel.text = "\(defaults.integer(forKey: "accountType"))"
        // Do any additional setup after loading the view.
    }
    


    @IBAction func AccountTypePressed(_ sender: UIButton) {
        accountType = sender.tag
        if let vc = storyboard?.instantiateViewController(identifier: "Phone") as? PhoneViewController {
            vc.accountType = accountType
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}




//sms



//design

//maps














extension UIViewController {

    /// This function sets an image as the background of the view controller
    ///
    /// - Parameters:
    ///   - imageName: name of image
    ///   - contentMode:
    ///          .scaleAspectFill
    ///          .scaleAspectFit
    ///          .scaleToFill
    func setBackgroundImage(_ imageName: String, contentMode: UIView.ContentMode) {
        let backgroundImage = UIImageView(frame: self.view.bounds)
        backgroundImage.image = UIImage(named: imageName)
        backgroundImage.contentMode = contentMode
        self.view.insertSubview(backgroundImage, at: 0)
    }

   
      func alert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
      }
 
    
}
