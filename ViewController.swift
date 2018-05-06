//
//  ViewController.swift
//  Health
//
//  Created by Jyoti S on 5/5/18.
//  Copyright © 2018 local. All rights reserved.
//

import Cocoa

let path = "/Users/local/Documents/health/problemdescription.csv"


class ViewController: NSViewController {
    
    @IBOutlet weak var loginasuserButton: NSButton!
    @IBOutlet weak var loginasadminButton: NSButton!
    @IBOutlet weak var loginasfriendsButton: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func dismiss(sender:AnyObject){
        self.dismissViewController(self)
    }


}

class LoginAsUserViewController: NSViewController {
    
    @IBOutlet weak var usernameText: NSTextField!
    @IBOutlet weak var passwordText: NSTextField!
    @IBOutlet weak var incorrectLoginText: NSTextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameText.stringValue = ""
        passwordText.stringValue = ""
        incorrectLoginText.stringValue=""
    

        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {

        }
    }
    
    @IBAction func dismiss(sender:AnyObject){
        self.dismissViewController(self)
    }
    
    
}

class ProblemDescriptionViewController: NSViewController {
    
    
    @IBOutlet weak var problemDescriptionText: NSTextField!
    @IBOutlet weak var statusMessageText: NSTextField!
    @IBOutlet weak var nameText: NSTextField!
    
    @IBOutlet weak var professionalCheck: NSButton!
    @IBOutlet weak var physicalCheck: NSButton!
    @IBOutlet weak var relationalCheck: NSButton!
    @IBOutlet weak var financialCheck: NSButton!
    @IBOutlet weak var spiritualCheck: NSButton!
    @IBOutlet weak var emotionalCheck: NSButton!
    @IBOutlet weak var IdontknowCheck: NSButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameText.stringValue = ""
        problemDescriptionText.stringValue = ""
        professionalCheck.state = 1
        physicalCheck.state = 1
        relationalCheck.state = 1
        financialCheck.state = 1
        spiritualCheck.state = 1
        emotionalCheck.state = 1
        IdontknowCheck.state = 1
        
        
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
            
        }
    }
    
    
    @IBAction func saveInformation(sender:AnyObject){
        statusMessageText.stringValue = "Information saved!"

        //userDictionaryDict.write(toFile: "/UserProfiles.plist", atomically: false)

        
        // Set the contents
        let contents =  "name,problem,professional,physical,relational,financial,spiritual,emotional,dontknow\n" + nameText.stringValue + "," + problemDescriptionText.stringValue + "," + String(physicalCheck.state) + "," + String(relationalCheck.state) + "," + String(financialCheck.state) + "," + String(spiritualCheck.state) + "," + String(emotionalCheck.state) + "," + String(IdontknowCheck.state)

        do {
            // Write contents to file
            try contents.write(toFile: path, atomically: false, encoding: String.Encoding.utf8)
            

        }
        catch let error as NSError {
            print("Ooops! Something went wrong: \(error)")
        }
        
        
        print(problemDescriptionText.stringValue)

    }
    
    @IBAction func dismiss(sender:AnyObject){
        self.dismissViewController(self)
    }
    
    
}
