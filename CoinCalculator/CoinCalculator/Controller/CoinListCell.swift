//
//  CoinListCell.swift
//  CoinCalculator
//
//  Created by jeonsangjun on 2018/01/31.
//  Copyright © 2018年 archive-asia. All rights reserved.
//

import UIKit

class CoinListCell: UITableViewCell {
    
    var ticker: Ticker? {
        didSet {
            // TODO: Cellに値を設定
            if let ticker = ticker {
                
                if let productCode = ticker.productCode {
                    marketNameLabel.text = productCode.convertCodeToName()
                    logoLabel.image = UIImage(named: productCode)
                }
                let bestBid = ticker.bestBid == 0 ? "-" : "\(ticker.bestBid)"
                bestBidLabel.text = bestBid
                let bestBidSize = ticker.bestBidSize == 0 ? "-" : "\(ticker.bestBidSize)"
                bestBidSizeLabel.text = bestBidSize
                let bestAsk = ticker.bestAsk == 0 ? "-" : "\(ticker.bestAsk)"
                bestAskLabel.text = bestAsk
                let bestAskSize = ticker.bestAskSize == 0 ? "-" : "\(ticker.bestAskSize)"
                bestAskSizeLabel.text = bestAskSize
                if let timestamp = ticker.timestamp {
                    timestampLabel.text = "\(timestamp)"
                }
                volumLabel.text = "\(ticker.volume)"
                
            }
        }
    }

    @IBOutlet weak var marketNameLabel: UILabel!
    @IBOutlet weak var logoLabel: UIImageView!
    @IBOutlet weak var bestBidLabel: UILabel!
    @IBOutlet weak var bestBidSizeLabel: UILabel!
    @IBOutlet weak var bestAskLabel: UILabel!
    @IBOutlet weak var bestAskSizeLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    @IBOutlet weak var volumLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
