//
//  CoinListCell.swift
//  CoinCalculator
//
//  Created by jeonsangjun on 2018/01/31.
//  Copyright © 2018年 archive-asia. All rights reserved.
//

import UIKit

class CoinListCell: UITableViewCell {
    
//    var market: Market? {
//        didSet {
//            // TODO: Cellに値を設定
//            if let productCode = market?.productCode {
//                marketNameLabel.text = productCode
//                logoLabel.image = UIImage(named: productCode)
//            }
//            BFCoinAPI.requestTicker(market?.productCode) { (ticker) in
//                self.bestBidLabel.text = "\(ticker.bestBid)"
//                self.bestBidSizeLabel.text = "\(ticker.bestBidSize)"
//                self.bestAskLabel.text = "\(ticker.bestAsk)"
//                self.bestAskSizeLabel.text = "\(ticker.bestAskSize)"
//                if let timestamp = ticker.timestamp {
//                   self.timestampLabel.text = "\(timestamp)"
//                }
//                self.volumLabel.text = "\(ticker.volume)"
//            }
//        }
//    }
    
    var ticker: Ticker? {
        didSet {
            // TODO: Cellに値を設定
            if let ticker = ticker {
                marketNameLabel.text = ticker.productCode
                if let productCode = ticker.productCode {
                   logoLabel.image = UIImage(named: productCode)
                }
                bestBidLabel.text = "\(ticker.bestBid)"
                bestBidSizeLabel.text = "\(ticker.bestBidSize)"
                bestAskLabel.text = "\(ticker.bestAsk)"
                bestAskSizeLabel.text = "\(ticker.bestAskSize)"
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

    override func prepareForReuse() {
        super.prepareForReuse()
    }

}
