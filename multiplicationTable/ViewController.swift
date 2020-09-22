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
                    var myAttributes: [NSMutableAttributedString.Key: Any] = [
                        //.kern: 5,
                        .foregroundColor: UIColor.black,
                        .backgroundColor: UIColor(
                            red:   .random(in: 0...1),
                            green: .random(in: 0...1),
                            blue:  .random(in: 0...1),
                            alpha: 1.0
                         ),
                        .font: UIFont.boldSystemFont(ofSize: 17)
                    ]
                    //var myAttribute = [ NSAttributedString.Key.kern: 10 ]
                    var myAttrString = NSMutableAttributedString(string: content, attributes: myAttributes)
                    print(myAttrString)
                    numberLabel.attributedText = myAttrString
                }else{
                    content += " " + "🍎" + ""
                    content += "\t"
                    //create attributed string
                    var myAttributes: [NSMutableAttributedString.Key: Any] = [
                        //.kern: 5,
                        .foregroundColor: UIColor.black,
                        .backgroundColor: UIColor.yellow,
                        .font: UIFont.boldSystemFont(ofSize: 17)
                    ]
                    var myAttrString = NSMutableAttributedString(string: content, attributes: myAttributes)
                    print(myAttrString)
                    numberLabel.attributedText = myAttrString
                }
            }
            content += "\n"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...9{
            for j in 1...9{
                if i == 9 || (j > 1 && j<5 && i+j == 10) || (i >= 5 && i == j)  {
                    content += " " + "\(i*j)" + ""
                    content += "\t"
                    numberLabel.text = content
                    //create attributed string
                    var myAttributes: [NSMutableAttributedString.Key: Any] = [
                        //.kern: 5,
                        .foregroundColor: UIColor.black,
                        .backgroundColor: UIColor(
                            red:   .random(in: 0...1),
                            green: .random(in: 0...1),
                            blue:  .random(in: 0...1),
                            alpha: 1.0
                         ),
                        .font: UIFont.boldSystemFont(ofSize: 17)
                    ]
                    //var myAttribute = [ NSAttributedString.Key.kern: 10 ]
                    var myAttrString = NSMutableAttributedString(string: content, attributes: myAttributes)
                    print(myAttrString)
                    numberLabel.attributedText = myAttrString
                }else{
                    content += " " + "🍎" + ""
                    content += "\t"
                    print(content)
                    numberLabel.text = content
                }
            }
            content += "\n"
        }
        //multipliValue()
        numberLabel.textAlignment = .center
        
        //numberLabel.addCharacterSpacing()
        // Do any additional setup after loading the view.
    }


}

