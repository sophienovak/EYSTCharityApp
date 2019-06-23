//
//  NotesViewController.swift
//  EYST
//
//  Created by Sophie Novak on 15/02/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class NotesViewController: UIViewController, UITextViewDelegate{

    var changed:Bool=false
    
    @IBOutlet weak var reportlabel: UILabel!
    @IBOutlet weak var notetextarea: UITextView!
    
    let manageObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func Save(_ sender: Any) {
        let entdesc=NSEntityDescription.entity(forEntityName: "UserNotes", in: manageObjectContext)
        let newnote=UserNotes(entity:entdesc!, insertInto:manageObjectContext)
        newnote.notetext=notetextarea.text
        do{
            try manageObjectContext.save()
            reportlabel.text="The note has been saved"
        }
        catch let error as NSError{
            reportlabel.text=error.localizedFailureReason
        }
    
    func textViewDidBeginEditing(_ textView: UITextView)
    {
        if changed == false
        {
        textView.text=" "
        changed=true
        }
    }
    
    
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        notetextarea.delegate=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
