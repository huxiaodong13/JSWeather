//
//  JSONViewController.swift
//  JSWeather
//
//  Created by student on 2018/12/18.
//  Copyright © 2018年 huxiaodong. All rights reserved.
//

import UIKit

class JSONViewController: UIViewController {

    let url = URL(string: "http://t.weather.sojson.com/api/weather/city/101270101")!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func JsonwithURL(_ sender: Any) {
        if let data = try? Data(contentsOf: url) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [[String:String]]{
                for tianqi in json {
                    print("times:\(tianqi["time"] ?? "")")
                }
            }
        }
    }
    
    @IBAction func JsonwithSession(_ sender: Any) {
    }
    
    
    @IBAction func JsonwithAlamofire(_ sender: Any) {
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
