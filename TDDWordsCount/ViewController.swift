//
//  ViewController.swift
//  TDDWordsCount
//
//  Created by Francis Adewale on 05/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var string: String? = "When I order pizza, I always order marghertia"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        returnNumberOfWords(in: string!)
        
        
    }

    func returnEmptyDataStruct(in string: String) -> Dictionary<String,Int> {
        
        
        let dataSet = Dictionary<String, Int>()
        return dataSet
        
    }
    
    
    func returnOneWordCount(in string: String) -> Dictionary<String,Int> {
        
        let words = string.split(separator: " ")
        
        var dataSet = Dictionary<String, Int>()
        
        for w in words {
            
            if !dataSet.keys.contains(String(w)) {
                dataSet[String(w)] = 1
                
            } else {
                
                dataSet[String(w)]! += 1

            }
            
  
        }
        
        return dataSet
        
    }
    
    func returnNumberOfWords(in string: String) -> Dictionary<String,Int> {
        
        let words = string.split(separator: " ")
        
        var dataSet = Dictionary<String, Int>()

        for w in words {
            
            if !dataSet.keys.contains(String(w)) {
                dataSet[String(w)] = 1
                
            } else {
                
                dataSet[String(w)]! += 1

            }
            
  
        }
        
        printWordsCount(wordDict: dataSet)
        
        return dataSet
        
    }
    
    func printWordsCount(wordDict: Dictionary<String,Int>) {
        
        for (k, v) in wordDict {
            print("\(k): \(v)")
        }
        
    }

}

