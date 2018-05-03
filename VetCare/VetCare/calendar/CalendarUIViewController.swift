//
//  CalendarViewController.swift
//  VetCare
//
//  Created by Raquel Ramos on 03/05/2018.
//  Copyright © 2018 raquelramos. All rights reserved.
//

import UIKit
import MBCalendarKit

class CalendarUIViewController: CalendarViewController {
    
    var data : [Date:[CalendarEvent]] = [:]
    
    required init?(coder aDecoder: NSCoder) {
        self.data = [:]
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.data = [:]
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.delegate = self
        self.dataSource = self
        
        //Instatiate a calendar view
        let calendar = CalendarView()
        //Present the calendar view
        self.view.addSubview(calendar)
        //Constraint with auto layout
        let top = self.topLayoutGuide.bottomAnchor
        let center = self.view.centerXAnchor
        calendar.translatesAutoresizingMaskIntoConstraints = false
        calendar.topAnchor.constraint(equalTo: top).isActive = true
        calendar.centerXAnchor.constraint(equalTo: center).isActive = true
        
        let title : NSString = NSLocalizedString("Add Swift Demo", comment: "") as NSString
        if let date : Date = NSDate(day: 2, month: 5, year: 2018) as Date?
        {
            let event : CalendarEvent = CalendarEvent(title: title as String, andDate: date, andInfo: nil)
            self.data[date] = [event]
        }
        
        let title2 : NSString = NSLocalizedString("Release MBCalendarKit 5.0.0", comment: "") as NSString
        if let date2 : Date = NSDate(day: 15, month: 8, year: 2017) as Date?
        {
            let event2 : CalendarEvent = CalendarEvent(title: title2 as String, andDate: date2, andInfo: nil)
            self.data[date2] = [event2]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //  MARK: - CalendarDataSource
    
    override func calendarView(_ calendarView: CalendarView, eventsFor date: Date) -> [CalendarEvent]
    {
        let eventsForDate = self.data[date] ?? []
        
        return eventsForDate
    }
    
    // MARK: - CKCalendarDelegate
    
    // Called before the selected date changes.
    override func calendarView(_ calendarView: CalendarView, didSelect date: Date) {
        super.calendarView(calendarView, didSelect: date) // Call super to ensure it
    }
    
    // Called after the selected date changes.
    override func calendarView(_ calendarView: CalendarView, willSelect date: Date) {
    }
    
    // A row was selected in the events table. (Use this to push a details view or whatever.)
    override func calendarView(_ calendarView: CalendarView, didSelect event: CalendarEvent) {
        
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
