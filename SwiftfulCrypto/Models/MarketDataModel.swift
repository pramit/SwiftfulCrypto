//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/22/23.
//

import Foundation

//JSON Data
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 10135,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 832,
     "total_market_cap": {
       "btc": 41813674.44149517,
       "eth": 666559187.120771,
       "ltc": 16760918714.412357,
       "bch": 5799358062.845849,
       "bnb": 5103326283.097603,
       "eos": 1886975091515.743,
       "xrp": 2089487363447.0896,
       "xlm": 8983817238425.51,
       "link": 177275579490.22342,
       "dot": 246699146318.341,
       "yfi": 195574270.78691587,
       "usd": 1088638864190.0345,
       "aed": 3998608650530.2446,
       "ars": 380997583997658,
       "aud": 1687916052065.9573,
       "bdt": 118932764971756.89,
       "bhd": 410313431107.545,
       "bmd": 1088638864190.0345,
       "brl": 5376025303029.669,
       "cad": 1473369281989.114,
       "chf": 957794270464.1703,
       "clp": 946625924356446.6,
       "cny": 7831776852869.537,
       "czk": 24141764316164.633,
       "dkk": 7473892269461.382,
       "eur": 1002725662305.8846,
       "gbp": 854208105258.7596,
       "hkd": 8531417834912.853,
       "huf": 384093763284440.44,
       "idr": 16678479553284132,
       "ils": 4127111582059.2354,
       "inr": 90357616858676.25,
       "jpy": 158504729987204.8,
       "krw": 1454969137299824.5,
       "kwd": 335509788832.4553,
       "lkr": 354242871945581.1,
       "mmk": 2286182206876401.5,
       "mxn": 18392024532002.63,
       "myr": 5064347996212.044,
       "ngn": 830903613093045,
       "nok": 11537514432961.072,
       "nzd": 1824998546483.6306,
       "php": 61399227585762.445,
       "pkr": 323870062096535.44,
       "pln": 4479632441783.531,
       "rub": 102876382463708.02,
       "sar": 4083415795328.375,
       "sek": 11872746618883.121,
       "sgd": 1475770819323.5168,
       "thb": 37971723582948.414,
       "try": 29612827792038.082,
       "twd": 34762308436068.66,
       "uah": 40216388057021.85,
       "vef": 109005409471.34819,
       "vnd": 25929242591070464,
       "zar": 20416897173951.58,
       "xdr": 818549739262.217,
       "xag": 46285669475.1565,
       "xau": 572406314.7911193,
       "bits": 41813674441495.17,
       "sats": 4181367444149517.5
     },
     "total_volume": {
       "btc": 1620017.435469714,
       "eth": 25824984.752752475,
       "ltc": 649380398.0281745,
       "bch": 224688724.48623276,
       "bnb": 197721861.7578479,
       "eos": 73108440943.87733,
       "xrp": 80954520385.76898,
       "xlm": 348066529854.6358,
       "link": 6868316011.28451,
       "dot": 9558043479.541561,
       "yfi": 7577275.444840086,
       "usd": 42177922999.45833,
       "aed": 154920987404.31546,
       "ars": 14761264997450.729,
       "aud": 65396152585.96914,
       "bdt": 4607898145197.742,
       "bhd": 15897070068.11084,
       "bmd": 42177922999.45833,
       "brl": 208287237148.2259,
       "cad": 57083811877.08191,
       "chf": 37108516256.23044,
       "clp": 36675812944179.07,
       "cny": 303432195850.4035,
       "czk": 935341838228.2881,
       "dkk": 289566414553.94653,
       "eur": 38849325672.18704,
       "gbp": 33095202526.985962,
       "hkd": 330538892514.07983,
       "huf": 14881222511228.807,
       "idr": 646186397974912.4,
       "ils": 159899669435.17148,
       "inr": 3500790511567.235,
       "jpy": 6141063410798.132,
       "krw": 56370921761349.03,
       "kwd": 12998898445.049068,
       "lkr": 13724687834972.912,
       "mmk": 88575210987077.36,
       "mxn": 712575510605.2704,
       "myr": 196211697793.48026,
       "ngn": 32192299729336.61,
       "nok": 447006267519.7902,
       "nzd": 70707238827.98393,
       "php": 2378834688457.756,
       "pkr": 12547932092338.86,
       "pln": 173557640105.01038,
       "rub": 3985814103050.1177,
       "sar": 158206731961.81918,
       "sek": 459994410594.473,
       "sgd": 57176856375.218704,
       "thb": 1471165954221.107,
       "try": 1147311208054.3665,
       "twd": 1346821261604.3274,
       "uah": 1558132613653.6902,
       "vef": 4223275429.9357634,
       "vnd": 1004595402033651.4,
       "zar": 791026616095.9559,
       "xdr": 31713664659.13878,
       "xag": 1793279173.947206,
       "xau": 22177151.913115155,
       "bits": 1620017435469.714,
       "sats": 162001743546971.4
     },
     "market_cap_percentage": {
       "btc": 46.55245744364188,
       "eth": 18.03244720640842,
       "usdt": 7.598860023580538,
       "bnb": 3.0154454440909606,
       "xrp": 2.528171462622371,
       "usdc": 2.3787146695845767,
       "steth": 1.2491452403318863,
       "ada": 0.8351096144814816,
       "doge": 0.8109116371982559,
       "sol": 0.771919866906348
     },
     "market_cap_change_percentage_24h_usd": -0.3500853463940831,
     "updated_at": 1692756909
   }
 }
 
 
 */


struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" } ) {
            return "$\(item.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$\(item.value.formattedWithAbbreviations())"
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}

