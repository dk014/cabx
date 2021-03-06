//
//  Constants.swift
//  CabFinder
//
//  Created by Dhirendra Verma on 21/07/17.
//  Copyright © 2017 Dhirendra Verma. All rights reserved.
//

import Foundation
import UIKit
import Alamofire



let path = Bundle.main.path(forResource: "Info", ofType: "plist")
let config: Dictionary<String, String>! = NSDictionary(contentsOfFile: path!)?["Development"] as? Dictionary<String, String>


class Constants{
	static let googleAPIKey:String = config["googleAPIKey"]!
	
	class func googleMapPathURL(origin:String, destination:String) ->String {
		return "https://maps.googleapis.com/maps/api/directions/json?origin=\(origin)&destination=\(destination)&mode=driving"
	}

	static let uberClientId: String = config["uberClientId"]!
	
	static let uberBaseURL: String = "https://api.uber.com"
	
	static let uberServerToken: String = config["uberServerToken"]!
	
	static let uberClientSecret: String = config["uberClientSecret"]!

	static let uberTimingURL:String = "/v1.2/estimates/time"
	
	static let uberPricingURL:String = "/v1.2/estimates/price"
	
	static let olaBaseURL: String = "http://sandbox-t.olacabs.com"
	
	static let olaAppTOKEN: String = config["olaAppTOKEN"]!
	
	static let olaClientSecret: String = ""
	
	static let olaClientId: String = ""
	
	static let olaTimingURL:String = ""
	
	static let olaPricingURL:String = "/v1/products?"
	
	static let uberWebURL:String = "https://itunes.apple.com/in/app/uber/id368677368?mt=8"
 
 	static let olaWebURL:String =  "https://itunes.apple.com/in/app/ola-cabs-book-a-taxi-with-one-touch/id539179365"
	
	static let themeColor: UIColor = UIColor(netHex: 0xF0CA28)
	
	static let placeHolderColor: UIColor = UIColor(netHex: 0xAAAAAA)
	
	static let currentLocColor: UIColor = UIColor(netHex: 0xC9FF2)
	
	static let labelTextColor: UIColor = UIColor(netHex: 0x000000)
	
	static let selectedTabColor: UIColor = UIColor(netHex: 0xFAE690)
	
	static let unselectedTabColor: UIColor = UIColor(netHex: 0xF4D233)

	class func olaDeeplinkURL(pickup_lat:Float, pickup_long:Float, drop_lat:Float, drop_lng:Float) -> String{
		return "olacabs://app/launch?lat=<\(pickup_lat)>&lng=<\(pickup_long)>&utm_source=<\(self.olaAppTOKEN)>&landing_page=bk&drop_lat=<\(drop_lat)>&drop_lng=<\(drop_lng)>"
	}
	class func uberDeeplinkURL(pickup_lat:Float,pickup_long:Float, drop_lat:Float , drop_lng:Float, pickup_address:String, drop_address:String)-> String{
		return "uber://?client_id=\(self.uberClientId)&action=setPickup&pickup[latitude]=\(pickup_lat)8&pickup[longitude]=\(pickup_long)&pickup[nickname]=\(pickup_address)&dropoff[latitude]=\(drop_lat)&dropoff[longitude]=\(drop_lng)&dropoff[formatted_address]= \(drop_address)"
	}
}
