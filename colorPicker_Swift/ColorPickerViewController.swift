//
//  ColorPickerViewController.swift
//  colorPicker_Swift
//
//  Created by EB on 14/02/2019.
//  Copyright © 2019 EB.org. All rights reserved.
//

import Foundation
import UIKit



class   ColorPickerViewController: UIViewController {
    
    var delegate : ColorPickerViewDelegate? = nil
    var stringColor : String? = nil
    
    enum SegueIdentifier: String {
        case pickColor
        // case backToFirst
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View loaded")
        //player.addObserver(colorPickerViewDelegate)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View appeard")
    }
    
    @IBAction func ClickBtnGreen(_ sender: UIButton) {
        
        stringColor = sender.currentTitle
        delegate?.userDidChooseColor(color: ColorAsset.green.color,withName: stringColor!)
        
        //  let vc = storyboard?.instantiateViewController(withIdentifier: "MainStoryBoard") as! ViewController
        //  present(vc, animated: true, completion: nil)
        
    }
    
    
    @IBAction func ClickBtnOrange(_ sender: UIButton) {
        
        stringColor = sender.currentTitle
        delegate?.userDidChooseColor(color: ColorAsset.orange.color,withName: stringColor!)
        // let vc = storyboard?.instantiateViewController(withIdentifier: "MainStoryBoard") as! ViewController
        // present(vc, animated: true, completion: nil)
    }
    
    @IBAction func ClickBtnPurple(_ sender: UIButton) {
        stringColor = sender.currentTitle
        delegate?.userDidChooseColor(color: ColorAsset.purple.color, withName: stringColor!)
        //  let vc = storyboard?.instantiateViewController(withIdentifier: "MainStoryBoard") as! ViewController
        //  present(vc, animated: true, completion: nil)
    }
    
}



protocol ColorPickerViewDelegate : UIPickerViewDelegate {
    func userDidChooseColor(color : UIColor, withName colorName: String)
}

