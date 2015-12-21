//
//  ViewController.swift
//  OpenFileAnotherApp
//
//  Created by Emmanuel Valentín Granados López on 21/12/15.
//  Copyright © 2015 DevWorms. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIDocumentInteractionControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UIDocumentInteractionControllerDelegate
    
    func documentInteractionControllerViewControllerForPreview(controller: UIDocumentInteractionController) -> UIViewController {
        return self
    }
    
    func methodSet( url: NSURL ) {
        
        if url != "" {
            
            let documentInteraction =  UIDocumentInteractionController(URL: url )
            
            documentInteraction.delegate = self
            
            // Preview PDF, Doc, Image
            documentInteraction.presentPreviewAnimated(true)
            //documentInteraction.presentOpenInMenuFromRect(sender.frame, inView: self.view, animated: true)
        }
        
    }


}

