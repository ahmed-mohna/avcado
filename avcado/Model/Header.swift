//
//  Header.swift
//  avcado
//
//  Created by Ahmed Mohna on 26/06/2022.
//

import Foundation

struct Header :Identifiable {
  var id = UUID()
    var image : String
    var headline : String
    var subheadline:String
}


    let header1Data = [
        Header(
          image: "avocado-slice-1",
          headline: "Avocados",
          subheadline: "Avocados are a powerhouse ingredient at any meal for anyone."
        ),
        Header(
          image: "avocado-slice-2",
          headline: "Healthy",
          subheadline: "Avocados are good for us and they can be part of our healthy diet."
        ),
        Header(
          image: "avocado-slice-3",
          headline: "Nutrients",
          subheadline: "Avocados have a surprising amount and diversity of vitamins and minerals."
        ),
        Header(
          image: "avocado-slice-4",
          headline: "Delicious",
          subheadline: "Craving more guacamole? Find the best guacamole recipes in the app."
        ),
        Header(
          image: "avocado-slice-5",
          headline: "Tasty",
          subheadline: "Avocados are a good source of natural fiber, which making you feel full."
        ),
        Header(
          image: "avocado-slice-6",
          headline: "Recipes",
          subheadline: "Enjoy these carefully handpicked avocado recipes for every occasion!"
        )

    ]
    

