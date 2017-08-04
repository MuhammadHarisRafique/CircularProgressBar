//
//  ViewController.swift
//  MBProgressBarApplication
//
//  Created by Higher Visibility on 03/08/2017.
//  Copyright © 2017 HigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var lbl_job: UILabel!
    @IBOutlet weak var lbl_counter: UILabel!
    @IBOutlet weak var progressBar: MBCircularProgressBarView!
    var timer  = Timer()
    var counter = 0
    var increment:CGFloat = 0.0
    var jobtime = 120
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnOk.layer.cornerRadius = 5
        self.progressBar.progressAngle = 100
        self.progressBar.progressLineWidth = 5
        self.increment = self.progressBar.progressAngle / CGFloat(self.jobtime)
        self.lbl_job.shadowOffset = CGSize(width: 2, height: 2)
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
      self.lbl_job.layer.cornerRadius = 4
        self.lbl_counter.text = "\(self.counter)"
    self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.setvalue), userInfo: nil, repeats: true)
        

        
    }

    func setvalue(){
        self.counter += 1
        if self.counter < self.jobtime + 1{
         self.lbl_counter.text = "\(self.counter)"
        self.progressBar.value += self.increment
        }else{
        
        self.timer.invalidate()
            
        }
        

    
    }


}

