//
//  ViewController.swift
//  RxSample1
//
//  Created by takahashi tomoki on 2016/09/11.
//  Copyright © 2016年 takahashi tomoki. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var sampleLabel: UILabel!
    
    @IBOutlet weak var sampleTextField: UITextField!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleTextField.rx_text
            .map{"「\($0)」"}
            .bindTo(sampleLabel.rx_text)
            .addDisposableTo(disposeBag)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

