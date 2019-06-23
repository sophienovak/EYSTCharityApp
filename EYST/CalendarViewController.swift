//
//  CalendarViewController.swift
//  EYST
//
//  Created by Sophie Novak on 27/03/2018.
//  Copyright © 2018 Sophie Novak. All rights reserved.
//

import UIKit
import UserNotifications

class CalendarViewController: UIViewController {
    @IBOutlet weak var permit: UIButton!
    
    
    
    @IBAction func permit(_ sender: Any) {
    let reg=UNUserNotificationCenter.current()
        reg.requestAuthorization(options: [.alert, .badge, .sound]){(granted, error)in
            if granted {
                self.permit.isHidden = true
            }
            }
    }
    
    @IBAction func Mumbles(_ sender: Any) {
        let set=UNUserNotificationCenter.current()
        let content=UNMutableNotificationContent()
        content.title="Reminder"
        content.subtitle="Walk to Mumbles Pier today"
        content.categoryIdentifier="alarm"
        content.sound=UNNotificationSound.default()
        
        var dc=DateComponents()
        dc.year=2018
        dc.month=3
        dc.day=29
        dc.hour=12
        dc.minute=00
        
        let trigger=UNCalendarNotificationTrigger(dateMatching:dc, repeats: false)
        let request=UNNotificationRequest(identifier: UUID().uuidString,content:content , trigger:trigger)
        set.add(request)
    }
    
    @IBAction func Easter(_ sender: Any) {
        let set=UNUserNotificationCenter.current()
        let content=UNMutableNotificationContent()
        content.title="Reminder"
        content.subtitle="Easter egg hunt today"
        content.categoryIdentifier="alarm"
        content.sound=UNNotificationSound.default()
        
        var dc=DateComponents()
        dc.year=2018
        dc.month=4
        dc.day=4
        dc.hour=12
        dc.minute=00
        
        let trigger=UNCalendarNotificationTrigger(dateMatching:dc, repeats: false)
        let request=UNNotificationRequest(identifier: UUID().uuidString,content:content , trigger:trigger)
        set.add(request)
    }
    
    @IBAction func BCastle(_ sender: Any) {
        let set=UNUserNotificationCenter.current()
        let content=UNMutableNotificationContent()
        content.title="Reminder"
        content.subtitle="Bouncy Castle at EYST today"
        content.categoryIdentifier="alarm"
        content.sound=UNNotificationSound.default()
        
        var dc=DateComponents()
        dc.year=2018
        dc.month=4
        dc.day=19
        dc.hour=11
        dc.minute=00
        
        let trigger=UNCalendarNotificationTrigger(dateMatching:dc, repeats: false)
        let request=UNNotificationRequest(identifier: UUID().uuidString,content:content , trigger:trigger)
        set.add(request)
    }
    
    @IBAction func Pizza(_ sender: Any) {
        let set=UNUserNotificationCenter.current()
        let content=UNMutableNotificationContent()
        content.title="Reminder"
        content.subtitle="We are making pizza today"
        content.categoryIdentifier="alarm"
        content.sound=UNNotificationSound.default()
        
        var dc=DateComponents()
        dc.year=2018
        dc.month=5
        dc.day=1
        dc.hour=09
        dc.minute=30
        
        let trigger=UNCalendarNotificationTrigger(dateMatching:dc, repeats: false)
        let request=UNNotificationRequest(identifier: UUID().uuidString,content:content , trigger:trigger)
        set.add(request)
    
    }

    @IBAction func Cardiff(_ sender: Any) {
        let set=UNUserNotificationCenter.current()
        let content=UNMutableNotificationContent()
        content.title="Reminder"
        content.subtitle="Trip to Cardiff centre today"
        content.categoryIdentifier="alarm"
        content.sound=UNNotificationSound.default()
        
        var dc=DateComponents()
        dc.year=2018
        dc.month=5
        dc.day=13
        dc.hour=07
        dc.minute=30
        
        let trigger=UNCalendarNotificationTrigger(dateMatching:dc, repeats: false)
        let request=UNNotificationRequest(identifier: UUID().uuidString,content:content , trigger:trigger)
        set.add(request)
    }
    
    @IBAction func Swimming(_ sender: Any) {
        let set=UNUserNotificationCenter.current()
        let content=UNMutableNotificationContent()
        content.title="Reminder"
        content.subtitle="LC2 swimming today"
        content.categoryIdentifier="alarm"
        content.sound=UNNotificationSound.default()
        
        var dc=DateComponents()
        dc.year=2018
        dc.month=6
        dc.day=2
        dc.hour=08
        dc.minute=0
        
        let trigger=UNCalendarNotificationTrigger(dateMatching:dc, repeats: false)
        let request=UNNotificationRequest(identifier: UUID().uuidString,content:content , trigger:trigger)
        set.add(request)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
