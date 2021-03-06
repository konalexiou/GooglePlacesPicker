//
//  PlacePicker.swift
//  PlacePicker-iOS
//
//  Created by Piotr Bernad on 04/07/2019.
//  Copyright © 2019 Piotr Bernad. All rights reserved.
//

import Foundation
import GoogleMaps
import GooglePlaces

public class PlacePicker {
    static var googleMapsKey: String?
    static var googleGeocodeKey: String?

    public static func configure(googleMapsAPIKey: String, placesAPIKey: String, googleGeocodeAPIKey: String) {
        GMSServices.provideAPIKey(googleMapsAPIKey)
        GMSPlacesClient.provideAPIKey(placesAPIKey)
        googleMapsKey = googleMapsAPIKey
        googleGeocodeKey = googleGeocodeAPIKey
    }

    public static func placePickerController(config: PlacePickerConfig = PlacePickerConfig.default) -> PlacePickerController {
        return PlacePickerController.controler(config: config)
    }
}
