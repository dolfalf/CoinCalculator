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
                marketNameLabel.text = ticker.productCode?.convertCodeToName()
                if let productCode = ticker.productCode {
                    logoLabel.image = UIImage(named: productCode) ?? UIImage(named: "no_image.png")
                }else {
                    logoLabel.image = UIImage(named: "no_image.png")
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
        
        for v in contentView.subviews {
            v.backgroundColor = .clear
        }
    }
}
