//
//  UserLocationViewController.swift
//  GoogleMapsExample
//
//  Created by Adolfho Athyla on 12/01/17.
//  Copyright © 2017 a7hyla. All rights reserved.
//

import UIKit
import GoogleMaps

class UserLocationViewController: UIViewController {

    var user: User?
    var map: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let camera = GMSCameraPosition.camera(withLatitude: (user?.coordinates?.latitude)!, longitude: (user?.coordinates?.longitude)!, zoom: 6)
        
        map = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        self.view = map
        
        let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: (user?.coordinates?.latitude)!, longitude: (user?.coordinates?.longitude)!))
        marker.title = user?.name
        marker.snippet = user?.address
        marker.map = map
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
