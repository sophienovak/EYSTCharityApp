//
//  ReadNotesViewController.swift
//  EYST
//
//  Created by Sophie Novak on 27/03/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class ReadNotesViewController: UIViewController {

    @IBOutlet weak var shownotes: UITextView!
    let manageObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func deleteall(_ sender: Any) {
        let fetchrequest=NSFetchRequest<NSFetchRequestResult>(entityName:"UserNotes")
        let batchDeleteRequest=NSBatchDeleteRequest(fetchRequest:fetchrequest)
        do{
            try manageObjectContext.execute(batchDeleteRequest)
            shownotes.text="Deleted"
        }
        catch let error as NSError{
            shownotes.text=error.localizedFailureReason
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let entityDescription=NSEntityDescription.entity(forEntityName: "UserNotes", in: manageObjectContext)
        let request=NSFetchRequest<NSFetchRequestResult>(entityName:"UserNotes")
        request.entity=entityDescription
        do{
            let result=try manageObjectContext.fetch(request)
            if(result.count>0){
                for anote in result{
                    let match=anote as! NSManagedObject
                    let thenote=match.value(forKey: "notetext") as? String
                    shownotes.text=shownotes.text! + "\n" + thenote!
                }
                
            }
            else{
                shownotes.text="No notes present"
            }
        }
        catch let error as NSError{
            shownotes.text=error.localizedFailureReason
        }
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
