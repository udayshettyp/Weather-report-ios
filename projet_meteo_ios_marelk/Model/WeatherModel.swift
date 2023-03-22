//
//  WeatherModel.swift
//  projet_meteo_ios_marelk
//
//  Created by user on 21/03/23.
//  Copyright © 2023 user. All rights reserved.
//

import Foundation
import UIKit

struct DailyModel {
    let icon:String
    let temperature: Double
    let date:Int
}
struct WeathetModel {

    //currentWeather data
    let conditionId: Int
    let cityName:String
    let temp_min:Double
    let temp_max:Double
    let pressure : Int
    let icon:String
    let humidity:Int
    let temperature: Double
    let description:String
    let country:String
    let wind:Double
    let lat: Double
    let lon: Double

    //forecastWeather Data
    let date:Int

    var temperatureString:String {
        return String(Int(temperature))
    }


}

struct WeatherData : Codable {
    var main : Main
    let name:String
    let weather: [Weather]
    let sys : Sys
    let dt : Int
    let coord: Coord
    let wind : Wind
}

    struct Main : Codable {
        var temp: Double
        var feels_like: Double
        var temp_min: Double
        var temp_max: Double
        var humidity: Int
        var pressure : Int
    }
    struct Weather: Codable {
        let description: String
        let id:Int
        let icon:String
    }

    struct Sys:Codable {
        let country:String
    }

struct Coord: Codable{
    let lon: Double
    let lat: Double
}

struct Wind: Codable{
    let speed: Double

}

struct DailyWeather : Codable {
    var daily : [daily]
}
struct daily : Codable{
    var dt : Int
    var temp : temp
    var weather : [weather]
}

struct temp : Codable {
    var day : Double
    var min : Double
    var max : Double
}

struct weather : Codable {
    var icon : String
    var description : String
}

struct ForecastWeather: Codable {
    let list: [List]
    let city: City
}

struct List: Codable {
    var date: Int
    var mainValue: ForecastWeatherMainValue
    var elements: [WeatherElement]
    var wind: WeatherWind


    enum CodingKeys: String, CodingKey {
        case wind
        case mainValue = "main"
        case date = "dt"
        case elements = "weather"


    }

}





struct ForecastWeatherMainValue: Codable {
    let temp: Double
    var tempMin, tempMax: Double
    let pressure, humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure
        case humidity
    }

}



struct WeatherElement: Codable {
    let id: Int
    let main, weatherDescription, icon: String

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }


}

struct WeatherWind: Codable {
let speed: Double
    }

struct City: Codable {
    let name : String
    let country : String
    let coord : Coord
}



