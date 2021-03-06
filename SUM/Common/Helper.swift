//
//  Helper.swift
//  SUM
//
//  Created by Jose Machado on 05/01/2022.
//

import Foundation
import CoreLocation
import UIKit


class Helper {
    func addLeftImageTo(txtField: UITextField, andImage img:UIImage){
        let leftImageView = UIImageView(frame:CGRect(x:0.0,y:0.0,width:img.size.width,height:img.size.height))
        leftImageView.image = img;
        txtField.rightView = leftImageView;
        txtField.rightViewMode = .always;
    }
    
    func getDistance(myPositionLatitude: CLLocationDegrees , myPositionLongitude: CLLocationDegrees , pointPositionLatitude:CLLocationDegrees?, pointPositionLongitude:CLLocationDegrees?)->Double
    {
        let deviceLocation = CLLocation(latitude: myPositionLatitude , longitude: myPositionLongitude)
        let pointLocation = CLLocation(latitude: pointPositionLatitude ?? myPositionLatitude, longitude: pointPositionLongitude ?? myPositionLongitude)
        
        let distance = deviceLocation.distance(from: pointLocation) / 1000
        return distance
        
    }
    
    func presentDialog(title: String, message: String) -> UIAlertController {
        let dialogMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
        })
        
        dialogMessage.addAction(ok)
        return dialogMessage
    }
}
