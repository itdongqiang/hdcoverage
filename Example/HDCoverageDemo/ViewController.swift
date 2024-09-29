//
//  ViewController.swift
//  HDCoverageDemo
//
//  Created by denglibing on 2021/10/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        let imageView = UIImageView(frame: self.view.bounds)
        imageView.image = UIImage(named: "2")
        imageView.image = UIImage(named: "1")
        imageView.image = UIImage(named: "off_demo")
        view.addSubview(imageView)
        view.insertSubview(imageView, at: 0)
        
        AFHTTPSessionManager().get("https://api.github.com/users", parameters: nil, headers: nil, progress: nil) { (_, response) in
//            debugPrint("response: \(String(describing: response))")
        } failure: { (_, _) in
            
        }
        
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        view.addSubview(button)
        let url = URL(string: "http://storage.360buyimg.com/i.imageUpload/3239373335393132375f6d31363232393537363439363237_mid.jpg")!
        button.jx.setImage(url: url, state: .normal, options: [])
        
        let imageView2 = UIImageView()
        
        imageView2.jx.setImage(url: url, placeholder: nil, options: [.webpEnable(true)]) { result in
            print("compeltion")
        }
        
        view.addSubview(imageView2)
        testKAKA()
        testKAKA1915()
    }
    
    func testKAKA1915() {
        
    }
    
    func testKAKA() {
        let jj = UILabel(frame: .zero)
        view.addSubview(jj)
    }

    
    @IBAction func projectOCAction(_ sender: UIButton) {
        HDOC.projectOCAction(sender.tag)
        
        
    }
    
    @IBAction func projectSwiftAction(_ sender: UIButton) {
        HDSwift.projectSwiftAction(sender.tag)
    }
    
    @IBAction func frameworkOCAction(_ sender: UIButton) {
        HDOCFramework.frameworkOCAction(sender.tag)
    }
 
    @IBAction func frameworkSwiftAction(_ sender: UIButton) {
        HDSwiftFramework.frameworkSwiftAction(sender.tag)
    }
    
    @IBAction func podsOCAction(_ sender: UIButton) {
        
    }
    
    @IBAction func podSwiftAction(_ sender: UIButton) {
        print("kakakaka")
    }
    
    func test2() {
        print("test again")
    }
    
    @IBAction func outSFrameworkOCAction(_ sender: UIButton) {
        HDOCFramework.frameworkOCAction(sender.tag)
    }
    
    @IBAction func outSFrameworkSwiftAction(_ sender: UIButton) {
        HDSwiftFramework.frameworkSwiftAction(sender.tag)
    }
}
