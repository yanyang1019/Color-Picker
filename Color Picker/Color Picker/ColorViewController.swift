//
//  ColorViewController.swift
//  Color Picker
//
//  Created by apple on 2018/7/28.
//  Copyright © 2018年 Tech innovator. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var iniRow:Int = 0
    var colors = [
        Color(name:"Red",uiColor:UIColor.red),
        Color(name:"Orange",uiColor:UIColor.orange),
        Color(name:"Yellow",uiColor:UIColor.yellow),
        Color(name:"Green",uiColor:UIColor.green),
        Color(name:"Blue",uiColor:UIColor.blue),
        Color(name:"Purple",uiColor:UIColor.purple),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = colors[iniRow].name
        view.backgroundColor = colors[iniRow].uiColor
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

extension ColorViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        view.backgroundColor = colors[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
}
