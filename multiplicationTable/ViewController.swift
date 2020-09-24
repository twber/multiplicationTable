//
//  ViewController.swift
//  multiplicationTable
//
//  Created by Bernice TSAI on 2020/9/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    var content: String = ""
    
    func multipliValue( ){
        for i in 1...9{
            for j in 1...9{
                if i == 9 || (j > 1 && j<5 && i+j == 10) || (i >= 5 && i == j)  {
                    content += " " + "\(i*j)" + ""
                    content += "\t"
                    //create attributed string
                    let myAttributes: [NSMutableAttributedString.Key: Any] = [
                        //.kern: 5,
                        .foregroundColor: UIColor.black,
                        //.backgroundColor: UIColor.yellow,
                        .backgroundColor: UIColor(
                            red:   .random(in: 0...1),
                            green: .random(in: 0...1),
                            blue:  .random(in: 0...1),
                            alpha: 1.0
                         ),
                        .font: UIFont.boldSystemFont(ofSize: 17)
                    ]
                    //var myAttribute = [ NSAttributedString.Key.kern: 10 ]
                    let myAttrString = NSMutableAttributedString(string: content, attributes: myAttributes)
                    print(myAttrString)
                    numberLabel.attributedText = myAttrString
                }else{
                    content += " " + "🍎" + ""
                    content += "\t"
                    //create attributed string
                    let elseAttributes: [NSMutableAttributedString.Key: Any] = [
                        //.kern: 5,
                        .foregroundColor: UIColor.black,
                        .backgroundColor: UIColor.yellow,
                        /*.backgroundColor: UIColor(
                            red:   .random(in: 0...1),
                            green: .random(in: 0...1),
                            blue:  .random(in: 0...1),
                            alpha: 1.0
                         ),*/
                        .font: UIFont.boldSystemFont(ofSize: 17)
                    ]
                    let elseAttrString = NSMutableAttributedString(string: content, attributes: elseAttributes)
                    print(elseAttrString)
                    numberLabel.attributedText = elseAttrString
                }
            }
            content += "\n"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //multipliValue()
        numberLabel.textAlignment = .center
        var content: NSMutableAttributedString = NSMutableAttributedString()
        for i in 1...9{
         for j in 1...9{
             let string: String
             let attributes: [NSMutableAttributedString.Key: Any]
             if i == 9 || (j > 1 && j<5 && i+j == 10) || (i >= 5 && i == j)  {
                 string = " \(i*j)\t"
                 attributes = [
                     .foregroundColor: UIColor.black,
                     .backgroundColor: UIColor(
                         red:   .random(in: 0...1),
                         green: .random(in: 0...1),
                         blue:  .random(in: 0...1),
                         alpha: 1.0
                      ),
                     .font: UIFont.boldSystemFont(ofSize: 17)
                 ]
             }else{
                 string = " \(i*j)\t"
                 attributes = [
                     //.kern: 5,
                     .foregroundColor: UIColor.black,
                     .backgroundColor: UIColor.white,
                     .font: UIFont.boldSystemFont(ofSize: 17)
                 ]
             }
             let attributedStringToAppend = NSMutableAttributedString(string: string, attributes: attributes)
             content.append(attributedStringToAppend)
         }
         content.append(NSAttributedString(string: "\n"))
     }
        numberLabel.attributedText = content
}
}


