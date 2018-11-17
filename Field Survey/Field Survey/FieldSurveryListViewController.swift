//
//  FieldSurveryListViewController.swift
//  Field Survey
//
//  Created by Sarah Wooldridge on 11/14/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import UIKit

class FieldSurveryListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var FieldTableView: UITableView!
    
    
    let dateFormatter = DateFormatter()
    
    let fieldSurveY = FieldSurveryJSONLoader.load(fileName: "field_observations")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldSurveY.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FieldSurveyCell", for: indexPath)
        
        
        if let cell = cell as? FieldSurveyTableViewCell {
            let fieldSurveys = fieldSurveY[indexPath.row]
            cell.ImageView.image = fieldSurveys.classification.image
            cell.title.text = fieldSurveys.title
            
            
            cell.dateLabel.text = dateFormatter.string(from: fieldSurveys.date)
            
        }
        return cell
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldSurveyDetailViewController,
            
            let row = FieldTableView.indexPathForSelectedRow?.row {
            
            destination.fieldSurvey = fieldSurveY[row]
            
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
