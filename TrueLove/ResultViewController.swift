//
//  ResultViewController.swift
//  TrueLove
//
//  Created by Victor Monteiro on 9/15/18.
//  Copyright © 2018 Atomuz Development. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var youNameLabelResult: UILabel!
    @IBOutlet weak var crushNameLabelResult: UILabel!
    @IBOutlet weak var tLabel: UILabel!
    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var uLabel: UILabel!
    @IBOutlet weak var eLabel: UILabel!
    @IBOutlet weak var lLabel: UILabel!
    @IBOutlet weak var oLabel: UILabel!
    @IBOutlet weak var vLabel: UILabel!
    @IBOutlet weak var labelE: UILabel!
    @IBOutlet weak var labelPercentageResult: UILabel!
    
    
    //MARK: Variables
    var ownNameRecovered = "0"
    var crushNameRecovered = "0"
    var contadorT = 0
    var contadorR = 0
    var contadorU = 0
    var contadorE = 0
    var contadorL = 0
    var contadorO = 0
    var contadorV = 0
    var arrayTrue = [String]()
    var arrayLove = [String]()
    
    //MARK: Viewlife Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Label com Nomes
        self.youNameLabelResult.text = ownNameRecovered
        self.crushNameLabelResult.text = crushNameRecovered
        
        //MARK: Variables With LabelTexts
        let youName = youNameLabelResult.text
        let crushName = crushNameLabelResult.text
        let resultNamesLabel = youName! + crushName!
        
        //Passing Values To Labels
        if !(youName!.isEmpty), !(crushName!.isEmpty){
            for letras in resultNamesLabel {
                switch letras {
                case "T", "t":
                    contadorT += 1
                    self.tLabel.text = "\(contadorT)"
                    let textoT = self.tLabel.text
                    arrayTrue.append(textoT!)
                case "R", "r":
                    contadorR += 1
                    self.rLabel.text = "\(contadorR)"
                    let textoR = self.rLabel.text
                    arrayTrue.append(textoR!)
                case "U", "u":
                    contadorU += 1
                    self.uLabel.text = "\(contadorU)"
                    let textoU = self.uLabel.text
                    arrayTrue.append(textoU!)
                case "E", "e":
                    contadorE += 1
                    self.eLabel.text = "\(contadorE)"
                    let textoEOne = self.eLabel.text
                    arrayTrue.append(textoEOne!)
                    self.labelE.text = "\(contadorE)"
                    let textoETwo = self.labelE.text
                    arrayLove.append(textoETwo!)
                case "L", "l":
                    contadorL += 1
                    self.lLabel.text = "\(contadorL)"
                    let textoL = self.lLabel.text
                    arrayLove.append(textoL!)
                case "O", "o":
                    contadorO += 1
                    self.oLabel.text = "\(contadorO)"
                    let textoO = self.oLabel.text
                    arrayLove.append(textoO!)
                case "V", "v":
                    contadorV += 1
                    self.vLabel.text = "\(contadorV)"
                    let textoV = self.vLabel.text
                    arrayLove.append(textoV!)
                default :
                   print(arrayTrue)
                    break
                }
            }
            
//            if arrayLove.count > 9 {
//                //self.arrayTrue
//            }
            
            self.labelPercentageResult.text = "\(arrayTrue.count) \(arrayLove.count)"
           
            
            
          
            
        }
    }
}


