//
//  ViewController.swift
//  IOSSwiftAlgorithmHeapSort
//
//  Created by Pooya on 2018-06-19.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputElem: UITextField!
    @IBOutlet weak var outputElem: UITextField!
    @IBOutlet weak var originalArray: UITextView!
    @IBOutlet weak var sortedarray: UITextView!
    
    var mainHeap = Heap<String>(sort: >, elements : [] )
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mainHeap.insert("lad01")
        mainHeap.insert("lad02")
        mainHeap.insert("lad03")
        mainHeap.insert("lad04")
        mainHeap.insert("lad12")
        mainHeap.insert("lad22")
        mainHeap.insert("lad05")
        mainHeap.insert("lad06")
        mainHeap.insert("lad07")
        mainHeap.insert("lad08")
        mainHeap.insert("lad09")

        print(mainHeap.sorted())
        
        sortedarray.text! = mainHeap.sorted().joined(separator: " , ")
        originalArray.text! = mainHeap.elements.joined(separator: " , ")
        
    }

    @IBAction func insertAct(_ sender: UIButton) {
        if inputElem.text!.isEmpty {return}
        mainHeap.insert(inputElem.text!)
        
        sortedarray.text! = mainHeap.sorted().joined(separator: " , ")
        originalArray.text! = mainHeap.elements.joined(separator: " , ")
    }
    

    @IBAction func removeAct(_ sender: UIButton) {
        
        guard let removedElem = mainHeap.remove() else {
            return
        }
        outputElem.text! = removedElem
        sortedarray.text! = mainHeap.sorted().joined(separator: " , ")
        originalArray.text! = mainHeap.elements.joined(separator: " , ")
    }
    
}

