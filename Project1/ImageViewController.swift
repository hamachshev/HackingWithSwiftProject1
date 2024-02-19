//
//  ImageViewController.swift
//  Project1
//
//  Created by Aharon Seidman on 1/6/24.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet var imageView:UIImageView!
    var selectedImage: String?
    var xOfY:(Int, Int)?
    
    
    
    
//    public func setImage(image: UIImage){
//
//        self.image.image = image
//    }
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        title = "Picture \(xOfY!.0) of \(xOfY!.1)"
        navigationItem.largeTitleDisplayMode = .never
//        image.contentMode = .scaleAspectFit
//
//        
//        view.addSubview(image)
       
    }
//    override func viewDidLayoutSubviews() {
//        image.frame = view.bounds
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
   
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
