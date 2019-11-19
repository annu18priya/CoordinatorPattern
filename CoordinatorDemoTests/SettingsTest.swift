//
//  SettingsTest.swift
//  CoordinatorDemoTests
//
//  Created by annpriya on 12/11/19.
//  Copyright © 2019 annpriya. All rights reserved.
//

import Foundation
import XCTest

@testable import CoordinatorDemo

class SettingsTest: XCTestCase {
    
    let serverJSON: JSONDictionary = [
           "results" : [
              [
                 "formatted_address" : "Near Cafe Coffee Day, New Patliputra Colony, Alpana market, Patna, Bihar 800013, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.624564,
                       "lng" : 85.11000199999999
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.62590447989272,
                          "lng" : 85.11140942989272
                       ],
                       "southwest" : [
                          "lat" : 25.62320482010728,
                          "lng" : 85.10870977010727
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "51cb6be409c6ba9de4bdd7b13675ca0037113b37",
                 "name" : "THE FRYING PAN",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 864,
                       "photo_reference" : "CmRaAAAABh4Tbavksb2lxTxEZB4uyytC1_2mJWezhmqIVRc2VHQJr47xFP5avuLCBVE9LuURmwhUu9soGiKDrfrcYy6TAhEJLSHGSdvla56J2-NeacUGhgGO1gkqr-HuETWXQc8sEhADtnev9qIAqKeEyayHEk2GGhTS9abCGWrU40V0bjhdTsX4xdpAUg",
                       "width" : 1152
                    ]
                 ],
                 "place_id" : "ChIJswabv4NZ7TkRk-wk5oFNpYY",
                 "plus_code" : [
                    "compound_code" : "J4F6+R2 Alpana market, Patna, Bihar",
                    "global_code" : "7MQ7J4F6+R2"
                 ],
                 "rating" : 4.4,
                 "reference" : "ChIJswabv4NZ7TkRk-wk5oFNpYY",
                 "types" : [ "restaurant", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 341
              ],
              [
                 "formatted_address" : "Shop No.5 More, Nav Vikash Colony, Phase 2, Ashiana Nagar Phase 1, AG Colony, Patna, Bihar 800025, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.6192364,
                       "lng" : 85.0824501
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.62058517989272,
                          "lng" : 85.08380967989272
                       ],
                       "southwest" : [
                          "lat" : 25.61788552010728,
                          "lng" : 85.08111002010727
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "e3a903266f8163bfe88199de657be2c830d20746",
                 "name" : "Oyepetu Restaurant",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 1536,
                       "photo_reference" : "CmRaAAAAjA6VOtdmbTwNoDpgnKf0tt0vUJyaP6Lv74OiJD6uLc3EvJewmMUHA-pm3OBFoi8-WLFLy6tHqiF49oUwS1e-7WQmOOK5Ilv-ermOgKBn0z-ECJ_0TPGF8piaTJ3mj8BOEhD7BX7VQuhLwBf124Rw7reMGhRLIWONNgH2jW76qkIaxJDKyLVjJw",
                       "width" : 2048
                    ]
                 ],
                 "place_id" : "ChIJ9dsApqNX7TkRULv4XXnS0fw",
                 "plus_code" : [
                    "compound_code" : "J39J+MX AG Colony, Patna, Bihar",
                    "global_code" : "7MQ7J39J+MX"
                 ],
                 "price_level" : 2,
                 "rating" : 4,
                 "reference" : "ChIJ9dsApqNX7TkRULv4XXnS0fw",
                 "types" : [ "restaurant", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 292
              ],
              [
                 "formatted_address" : "162A, near Post Office, New Patliputra Colony, Patliputra Colony, Patna, Bihar 800013, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.6287775,
                       "lng" : 85.1065692
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.63015587989272,
                          "lng" : 85.10792587989273
                       ],
                       "southwest" : [
                          "lat" : 25.62745622010727,
                          "lng" : 85.10522622010728
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "17e0eb381cc52ef2bf7f8fb6ce09478fcdbcc123",
                 "name" : "Cafe Hideout",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 673,
                       "photo_reference" : "CmRaAAAA67iCwVWIQwNsmV7DlXLh7PHsJifouofM9WueBhtDBDz_GCW8S137VEb5u378C8ECBgkdgwMrmq_DmAuNayMoJX9IStVNgAkr-gYzwTYlIF03eLvgez-ITmXKpFDmRj-0EhDZKX1PuV2R9IFU3jKKyP0tGhTF970ncPo93nlQF4xPXr41b01yUA",
                       "width" : 1200
                    ]
                 ],
                 "place_id" : "ChIJk3bDVdVZ7TkRPDlepNYP7Ro",
                 "plus_code" : [
                    "compound_code" : "J4H4+GJ Patliputra Colony, Patna, Bihar",
                    "global_code" : "7MQ7J4H4+GJ"
                 ],
                 "price_level" : 2,
                 "rating" : 4.3,
                 "reference" : "ChIJk3bDVdVZ7TkRPDlepNYP7Ro",
                 "types" : [ "restaurant", "cafe", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 1281
              ],
              [
                 "formatted_address" : "6th P & M Nda BasketBall Court Mall Road, Patliputra Kurji Rd, Patliputra Industrial Area, Patna, Bihar 800013, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.6343007,
                       "lng" : 85.1063422
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.63556032989272,
                          "lng" : 85.10787182989272
                       ],
                       "southwest" : [
                          "lat" : 25.63286067010728,
                          "lng" : 85.10517217010728
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "78c094a4d37fe1c46ae96093a9da7c71b11d3f01",
                 "name" : "17 Degrees, Patna",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 3024,
                       "photo_reference" : "CmRaAAAAO9NyElWj6_YihA-6gDVrOIK7G50njon1Gv42TfHniM2cf_x3eOfU4tL2lLm9_7XRn32Ch3BcGztOPG7p0fN5Yb17iqBzxF8BQnx2mkrC2H0DNgipXJJi1l6g6Ozu_PybEhAlDXulZ7aC7mKCXdQIdvQrGhTv71Hl-phDrleBqMKKX8GBzczS4Q",
                       "width" : 4032
                    ]
                 ],
                 "place_id" : "ChIJ3Q-BCnBY7TkR89rKxSfISyw",
                 "plus_code" : [
                    "compound_code" : "J4M4+PG Patna, Bihar",
                    "global_code" : "7MQ7J4M4+PG"
                 ],
                 "price_level" : 3,
                 "rating" : 4.2,
                 "reference" : "ChIJ3Q-BCnBY7TkR89rKxSfISyw",
                 "types" : [ "restaurant", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 889
              ],
              [
                 "formatted_address" : "8th Floor, Patna One Mall, New Dak Bunglow Rd, Bander Bagicha, Fraser Road Area, Patna, Bihar 800001, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.609878,
                       "lng" : 85.13665349999999
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.61129857989272,
                          "lng" : 85.13801502989273
                       ],
                       "southwest" : [
                          "lat" : 25.60859892010728,
                          "lng" : 85.13531537010728
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "5d07fdf19d01a400c0df1852669afc9dd40d115b",
                 "name" : "Barbeque Nation - Patna - Patna One Mall",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 1728,
                       "photo_reference" : "CmRaAAAAiitY3vVE1d1IGZyrQD_wYVRHgKSJTGRH9dh_pBYJNrr1gm5uOaCmXmHgs23xemoYUvz2BqQUwNFGjcRqJ2ZjnqfwfJrVWtRsqjhI1Y1h-dJNt4XmX84AmgDy-g8eNsw_EhDEn9fBnC8nlQI9feIUxQyWGhQA-p_tcfqryW0Gf6FeZ35EwPaL2Q",
                       "width" : 2304
                    ]
                 ],
                 "place_id" : "ChIJlXOFO0NY7TkRheDLAr2Chz8",
                 "plus_code" : [
                    "compound_code" : "J45P+XM Fraser Road Area, Patna, Bihar",
                    "global_code" : "7MQ7J45P+XM"
                 ],
                 "price_level" : 3,
                 "rating" : 4.5,
                 "reference" : "ChIJlXOFO0NY7TkRheDLAr2Chz8",
                 "types" : [ "restaurant", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 3653
              ],
              [
                 "formatted_address" : "Frazer Road Dumraow Kothi, Near, Dak Bunglow, Chouraha, Patna, Bihar 800001, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.6109987,
                       "lng" : 85.1377535
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.61244972989272,
                          "lng" : 85.13913957989273
                       ],
                       "southwest" : [
                          "lat" : 25.60975007010727,
                          "lng" : 85.13643992010728
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "dfb220d8867e8e5692fc4c47a4df09f6290717a3",
                 "name" : "Kapil Dev's Elevens",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 636,
                       "photo_reference" : "CmRaAAAA2ytIgzlDOxyR7MZaqU0f2knmmITuqY0oFGpNOa0Lw1B9l1rGCtLVe0bAgD6IdIrQ3EBRV5M-zP-X66XuXtc9HRedfwZVNjOs9lhI1eslr5EKiyaDHNSRj1TETSDOsnWDEhD9t8SuGUGLeFBY2h1USBxwGhQJE8v_-etvAIx5Rndz5QvjAG80Qw",
                       "width" : 960
                    ]
                 ],
                 "place_id" : "ChIJgfRbuPR-DRQR0CQ3YB2MlEA",
                 "plus_code" : [
                    "compound_code" : "J46Q+94 Patna, Bihar",
                    "global_code" : "7MQ7J46Q+94"
                 ],
                 "price_level" : 2,
                 "rating" : 4.2,
                 "reference" : "ChIJgfRbuPR-DRQR0CQ3YB2MlEA",
                 "types" : [ "restaurant", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 1257
              ],
              [
                 "formatted_address" : "Hotel Maurya, South Gandhi Maidan, Raja Ji Salai, Dujra Diara, Patna, Bihar 800001, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.615315,
                       "lng" : 85.1429892
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.61662567989272,
                          "lng" : 85.14432717989273
                       ],
                       "southwest" : [
                          "lat" : 25.61392602010727,
                          "lng" : 85.14162752010728
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "590eb238bb59f05777d1cb2c90d1a17e3daf263f",
                 "name" : "Spice Court",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 598,
                       "photo_reference" : "CmRaAAAAUWIVc5Fbybfh_kT1FYpxIwd9TWWn7d_nMmghyV9F7JUYSsp9Mq2vVR91FNwVqU0EIfh-83GBeFQess5YG4aVOoadCpByaof4tnnCHFaxvNqOTINIcNBLi6coUNjsQTYbEhArDugzqtVEIqMAC7RyKl6NGhSQH2rrHvTmBjldd_Rzd586qd5hwg",
                       "width" : 900
                    ]
                 ],
                 "place_id" : "ChIJpxNmK1pY7TkR1YJsrH0b_14",
                 "plus_code" : [
                    "compound_code" : "J48V+45 Patna, Bihar",
                    "global_code" : "7MQ7J48V+45"
                 ],
                 "rating" : 4,
                 "reference" : "ChIJpxNmK1pY7TkR1YJsrH0b_14",
                 "types" : [ "restaurant", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 172
              ],
              [
                 "formatted_address" : "2nd Floor, Chandra Complex, Boring Rd, opposite Tapasya Comlex, Sri Krishna Puri, Patna, Bihar 800001, India",
                 "geometry" : [
                    "location" : [
                       "lat" : 25.615505,
                       "lng" : 85.11543139999999
                    ],
                    "viewport" : [
                       "northeast" : [
                          "lat" : 25.61676637989272,
                          "lng" : 85.11669747989272
                       ],
                       "southwest" : [
                          "lat" : 25.61406672010728,
                          "lng" : 85.11399782010727
                       ]
                    ]
                 ],
                 "icon" : "https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png",
                 "id" : "377e2553e301e524575604b294e89f9e665c0999",
                 "name" : "Swaaddesh",
                 "opening_hours" : [
                    "open_now" : true
                 ],
                 "photos" : [
                    [
                       "height" : 2304,
                       "photo_reference" : "CmRaAAAAsijRR1OSyJJr23bgUrK3j2ZtV93Q2mro_ngbmcreUFntvgvLGAkAr2uRJg4goYTRDXz6MwK8K9GDod0wO0jAduGXWU54toml44ZFBS5kNqLU0ZZlEp2UcFW4bp2z3sdCEhCDryR-_d0xx4BDzG7sOB0tGhRmbfMU-sR0ItiEZcISsyOFMqSKXw",
                       "width" : 4096
                    ]
                 ],
                 "place_id" : "ChIJNaXg2TpY7TkRWzu7WfY_W-M",
                 "plus_code" : [
                    "compound_code" : "J488+65 Sri Krishna Puri, Patna, Bihar",
                    "global_code" : "7MQ7J488+65"
                 ],
                 "price_level" : 2,
                 "rating" : 4.1,
                 "reference" : "ChIJNaXg2TpY7TkRWzu7WfY_W-M",
                 "types" : [ "restaurant", "food", "point_of_interest", "establishment" ],
                 "user_ratings_total" : 2061
              ],
           ],
           "status" : "OK"
    ]
    
    func testValidSettingResultData() {
        let resultData = try? ResultsData(json: serverJSON)
        
        if let resData = resultData, let json = serverJSON["results"] as? [JSONDictionary] {
            for(index, r) in resData.results.enumerated() {
                let rJSON = json[index]
                XCTAssertEqual(r.name, rJSON["name"] as? String ?? "")
            }
        }
    }
}
