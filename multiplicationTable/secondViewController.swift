//
//  secondViewController.swift
//  multiplicationTable
//
//  Created by Bernice TSAI on 2020/9/22.
//

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.width / 10
        var x: CGFloat = 0
        for i in 0...9{
            print(x)
            var y: CGFloat = width
            for j in 0...9{
                let label = UILabel(frame: CGRect(x: x, y: y, width: width, height: width))
                if i == 0, j == 0 {
                    label.text = "X"
                }else if i != 0, j == 0 {
                    label.text = "\(i)"
                }else if i == 0, j != 0 {
                    label.text = "\(j)"
                }else if j == 9 || (i>1 && i<5 && i+j == 10) || (j >= 5 && i == j)  {
                    label.text = "\(j*i)"
                    label.backgroundColor = UIColor(
                        red:   .random(in: 0...1),
                        green: .random(in: 0...1),
                        blue:  .random(in: 0...1),
                        alpha: 1.0
                     )
                }else{
                    label.text = "\(j*i)"
                }
                view.addSubview(label)
                y = y + width*CGFloat(1)
        }
        x = x + width
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
}
