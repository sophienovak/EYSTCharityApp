//
//  ContactViewController.swift
//  EYST
//
//  Created by Sophie Novak on 28/03/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class ContactViewController: UIViewController, UITextViewDelegate {

    var changed:Bool=false
    
    @IBOutlet weak var infolabel: UILabel!
    
    @IBOutlet weak var emailtext: UITextView!
    
    
    let manageObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func SendEmail(_ sender: Any) {
        let entdesc=NSEntityDescription.entity(forEntityName: "ContactUs", in:manageObjectContext)
        let newnote=ContactUs(entity:entdesc!,insertInto:manageObjectContext)
        newnote.notecontact=emailtext.text
        do{
            try manageObjectContext.save()
            infolabel.text="The email has been sent"
        }
        catch let error as NSError{
            infolabel.text=error.localizedFailureReason
        }
        
        func textViewDidBeginEditing(_ textView: UITextView){
            if changed == false{
                textView.text=" "
                changed=true
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
