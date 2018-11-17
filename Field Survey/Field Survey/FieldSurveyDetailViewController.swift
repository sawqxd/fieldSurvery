//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Sarah Wooldridge on 11/14/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey: FieldSurvey?

    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var FieldSurveyImage: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
    
        FieldSurveyImage.image = fieldSurvey?.classification.image
        
        descriptionLabel.text = fieldSurvey?.description
        
        titleLabel.text = fieldSurvey?.title
        
        if let date = fieldSurvey?.date {
            
            dateLabel.text = dateFormatter.string(from: date)
            
        } else {
            
            dateLabel.text = ""
        }
        
        
        

        // Do any additional setup after loading the view.
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
