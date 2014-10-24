//
//  KeyboardViewController.swift
//  AneKeyboard
//
//  Created by Kugimiya on 2014/09/17.
//  Copyright (c) 2014年 kugimiya. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        var v = UINib(nibName:"AneKeyboard", bundle:nil).instantiateWithOwner(self,options:nil)[0] as UIView
        self.inputView.addSubview(v)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    @IBAction func pushAne(sender: AnyObject) {
        // 「あーね」ボタン押下
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("あーね")
    }
    
    @IBAction func pushNext(sender: AnyObject) {
        // 「Next」ボタン押下
        // 次のキーボードへ(これは必ず入れないといけないらしい)
        self.advanceToNextInputMode()
    }
}
