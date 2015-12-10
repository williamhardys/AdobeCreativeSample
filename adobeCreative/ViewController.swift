//
//  ViewController.swift
//  adobeCreative
//
//  Created by 山崎友弘 on 2015/12/08.
//  Copyright © 2015年 yamasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController,AdobeUXImageEditorViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

@IBAction func open(sender: AnyObject) {
    AdobeImageEditorCustomization.setToolOrder([
        kAdobeImageEditorEnhance,        /* Enhance */
        kAdobeImageEditorEffects,        /* Effects */
        kAdobeImageEditorStickers,       /* Stickers */
        kAdobeImageEditorOrientation,    /* Orientation */
        kAdobeImageEditorCrop,           /* Crop */
        kAdobeImageEditorColorAdjust,    /* Color */
        kAdobeImageEditorLightingAdjust, /* Lighting */
        kAdobeImageEditorSharpness,      /* Sharpness */
        kAdobeImageEditorDraw,           /* Draw */
        kAdobeImageEditorText,           /* Text */
        kAdobeImageEditorRedeye,         /* Redeye */
        kAdobeImageEditorWhiten,         /* Whiten */
        kAdobeImageEditorBlemish,        /* Blemish */
        kAdobeImageEditorBlur,           /* Blur */
        kAdobeImageEditorMeme,           /* Meme */
        kAdobeImageEditorFrames,         /* Frames */
        kAdobeImageEditorFocus,          /* TiltShift */
        kAdobeImageEditorSplash,         /* ColorSplash */
        kAdobeImageEditorOverlay,        /* Overlay */
        kAdobeImageEditorVignette        /* Vignette */
        ])
    let adobeViewCtr = AdobeUXImageEditorViewController(image: UIImage(named: "aiko_photo.jpg"))
    adobeViewCtr.delegate = self
    self.presentViewController(adobeViewCtr, animated: true) { () -> Void in
        
    }

}
    
func photoEditor(editor: AdobeUXImageEditorViewController!, finishedWithImage image: UIImage!) {
    editor.dismissViewControllerAnimated(true, completion: nil)
}

func photoEditorCanceled(editor: AdobeUXImageEditorViewController!) {
    editor.dismissViewControllerAnimated(true, completion: nil)
}
    

}

