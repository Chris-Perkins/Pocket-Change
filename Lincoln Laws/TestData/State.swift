//
//  State.swift
//  Lincoln Laws
//
//  Created by Christopher Perkins on 3/2/19.
//  Copyright © 2019 Christopher Perkins. All rights reserved.
//

import Foundation

// I made a script to generate this from the following:
// ALABAMA("Alabama", "AL"), ALASKA("Alaska", "AK"), AMERICAN_SAMOA("AmericanSamoa", "AS"), ARIZONA("Arizona", "AZ"), ARKANSAS("Arkansas", "AR"), CALIFORNIA("California", "CA"), COLORADO("Colorado", "CO"), CONNECTICUT("Connecticut", "CT"), DELAWARE("Delaware", "DE"), DISTRICT_OF_COLUMBIA("DistrictOfColumbia", "DC"), FEDERATED_STATES_OF_MICRONESIA("FederatedStatesOfMicronesia", "FM"), FLORIDA("Florida", "FL"), GEORGIA("Georgia", "GA"), GUAM("Guam", "GU"), HAWAII("Hawaii", "HI"), IDAHO("Idaho", "ID"), ILLINOIS("Illinois", "IL"), INDIANA("Indiana", "IN"), IOWA("Iowa", "IA"), KANSAS("Kansas", "KS"), KENTUCKY("Kentucky", "KY"), LOUISIANA("Louisiana", "LA"), MAINE("Maine", "ME"), MARYLAND("Maryland", "MD"), MARSHALL_ISLANDS("MarshallIslands", "MH"), MASSACHUSETTS("Massachusetts", "MA"), MICHIGAN("Michigan", "MI"), MINNESOTA("Minnesota", "MN"), MISSISSIPPI("Mississippi", "MS"), MISSOURI("Missouri", "MO"), MONTANA("Montana", "MT"), NEBRASKA("Nebraska", "NE"), NEVADA("Nevada","NV"), NEW_HAMPSHIRE("NewHampshire", "NH"), NEW_JERSEY("NewJersey", "NJ"), NEW_MEXICO("NewMexico", "NM"), NEW_YORK("NewYork", "NY"), NORTH_CAROLINA("NorthCarolina", "NC"), NORTH_DAKOTA("NorthDakota", "ND"), NORTHERN_MARIANA_ISLANDS("NorthernMarianaIslands", "MP"), OHIO("Ohio", "OH"), OKLAHOMA("Oklahoma", "OK"), OREGON("Oregon", "OR"), PALAU("Palau","PW"), PENNSYLVANIA("Pennsylvania", "PA"), PUERTO_RICO("PuertoRico", "PR"), RHODE_ISLAND("RhodeIsland", "RI"), SOUTH_CAROLINA("SouthCarolina", "SC"), SOUTH_DAKOTA("SouthDakota", "SD"), TENNESSEE("Tennessee", "TN"), TEXAS("Texas", "TX"), UTAH("Utah", "UT"), VERMONT("Vermont", "VT"), VIRGIN_ISLANDS("VirginIslands", "VI"), VIRGINIA("Virginia", "VA"), WASHINGTON("Washington", "WA"), WEST_VIRGINIA("WestVirginia", "WV"), WISCONSIN("Wisconsin", "WI"), WYOMING("Wyoming", "WY"), UNKNOWN("Unknown", "")

public enum State: String {
    case alabama = "AL"
    case alaska = "AK"
    case americanSamoa = "AS"
    case arizona = "AZ"
    case arkansas = "AR"
    case california = "CA"
    case colorado = "CO"
    case connecticut = "CT"
    case delaware = "DE"
    case districtOfColumbia = "DC"
    case federatedStatesOfMicronesia = "FM"
    case florida = "FL"
    case georgia = "GA"
    case guam = "GU"
    case hawaii = "HI"
    case idaho = "ID"
    case illinois = "IL"
    case indiana = "IN"
    case iowa = "IA"
    case kansas = "KS"
    case kentucky = "KY"
    case louisiana = "LA"
    case maine = "ME"
    case maryland = "MD"
    case marshallIslands = "MH"
    case massachusetts = "MA"
    case michigan = "MI"
    case minnesota = "MN"
    case mississippi = "MS"
    case missouri = "MO"
    case montana = "MT"
    case nebraska = "NE"
    case nevada = "NV"
    case newHampshire = "NH"
    case newJersey = "NJ"
    case newMexico = "NM"
    case newYork = "NY"
    case northCarolina = "NC"
    case northDakota = "ND"
    case northernMarianaIslands = "MP"
    case ohio = "OH"
    case oklahoma = "OK"
    case oregon = "OR"
    case palau = "PW"
    case pennsylvania = "PA"
    case puertoRico = "PR"
    case rhodeIsland = "RI"
    case southCarolina = "SC"
    case southDakota = "SD"
    case tennessee = "TN"
    case texas = "TX"
    case utah = "UT"
    case vermont = "VT"
    case virginIslands = "VI"
    case virginia = "VA"
    case washington = "WA"
    case westVirginia = "WV"
    case wisconsin = "WI"
    case wyoming = "WY"
}
