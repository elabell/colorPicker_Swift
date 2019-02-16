//
//  ViewController.swift
//  colorPicker_Swift
//
//  Created by EB on 14/02/2019.
//  Copyright © 2019 EB.org. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorPickerViewDelegate, SegueHandlerType {

    @IBOutlet weak var labelCurrentColor: UILabel!
    @IBOutlet weak var btnPickColor: UIButton!
    
    
    
    
    var colorBackgr: UIColor? = nil
    // var colorNameBackgr: String = ""
    
    enum SegueIdentifier: String {
        case pickColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorBackgr = view.backgroundColor
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segueIdentifierForSegue(segue: segue) {
        case .pickColor:
            
            guard let colorPickerViewController = segue.destination as? ColorPickerViewController
                else {return }
            colorPickerViewController.delegate = self
            
            break
            
            
        }
        
        
    }
    
    
    
    // ColorPickerViewDelegate
    func userDidChooseColor(color: UIColor, withName colorName: String) {
        
        
        self.view.backgroundColor = color
        btnPickColor.backgroundColor = color
        labelCurrentColor.text = colorName
        
        // colorBackgr = color
        // colorNameBackgr = colorName
        //dismiss back to previous view
        self.dismiss(animated: true, completion: nil)
        
        let alertVC = UIAlertController(title: "Attention", message: "Do you want to save current color of backgraund?", preferredStyle: .alert)
        
        let actionY = UIAlertAction(title: "YES", style: .default, handler: nil)
        let actionN = UIAlertAction(title: "NO", style: .cancel, handler: {(action: UIAlertAction!) in
            
            self.animate2()
            // animate(120,)
            // self.view.backgroundColor = self.colorBackgr
            
        })
        alertVC.addAction(actionY)
        alertVC.addAction(actionN)
        present(alertVC, animated: true, completion: nil)
        
    }
    
    
    /* func animate(withDuration duration:
     TimeInterval, animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil){
     
     
     self.view.backgroundColor = self.colorBackgr
     
     
     }
     */
    func animate2(){
        
     /*   UIView.animate(withDuration: 22,
                       options: [UIView.AnimationOptions.Repeat, UIView.AnimationOptions.Autoreverse],
                       animations:{() -> Void in self.view.backgroundColor = self.colorBackgr },
                       completion: nil)
       */
    }
    
    /*
     UIView.animate(withDuration: 22,
     options: [UIView.AnimationOptions.Repeat, UIView.AnimationOptions.Autoreverse],
     animations:{@escaping() -> Void in self.view.backgroundColor = self.colorBackgr },
     completion: nil)
     
     */
    


}

