//
//  CoinInforViewController.swift
//  CoinCalculator
//
//  Created by jeonsangjun on 2018/02/05.
//  Copyright © 2018年 archive-asia. All rights reserved.
//

import UIKit

class CoinInforViewController: UIViewController {

    var ticker: Ticker!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var marketView: UIView!
    @IBOutlet weak var chartView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = ticker.productCode
        
        setupSegmentedControl()
    }
    
    private func setupSegmentedControl() {
        // Configure Segmented Control
        segmentedControl.removeAllSegments()
        segmentedControl.insertSegment(withTitle: "気配", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "チャート", at: 1, animated: false)
        segmentedControl.addTarget(self, action: #selector(selectionDidChange(_:)), for: .valueChanged)
        
        // Select First Segment
        segmentedControl.selectedSegmentIndex = 0
    }
    
    @objc private func selectionDidChange(_ sender: UISegmentedControl)
    {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            marketView.isHidden = false
            chartView.isHidden = true
        case 1:
            marketView.isHidden = true
            chartView.isHidden = false
        default:
            break;
        }
    }


}
