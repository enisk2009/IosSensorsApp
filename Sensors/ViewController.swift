import UIKit
import CoreMotion
import CoreLocation


class ViewController: UIViewController{
    
    
    @IBOutlet weak var Accelerometer: UIButton!
    @IBOutlet weak var Gyroscope: UIButton!
    @IBOutlet weak var Magnetometer: UIButton!
    @IBOutlet weak var Barometer: UIButton!
    @IBOutlet weak var GPS: UIButton!
    @IBOutlet weak var Proximity: UIButton!
    

    

    

    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    @IBAction func Accelerometer(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "AccelScreen") as! AccelVC
        present(selectionVC, animated: true, completion: nil)
    }
    
    @IBAction func Gryoscope(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "GyroScreen") as! GyroViewController
        present(selectionVC, animated: true, completion: nil)
        
    }
    
    
    @IBAction func Magnetometer(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "MagScreen") as! MagVC
        present(selectionVC, animated: true, completion: nil)
    }
    
    
    @IBAction func Barometer(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "BarScreen") as! BarVC
        present(selectionVC, animated: true, completion: nil)
    }
    
    
    @IBAction func GPS(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "GpsScreen") as! GPSVC
        present(selectionVC, animated: true, completion: nil)
    }
    
    
    @IBAction func Proximity(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "ProxScreen") as! ProxVC
        present(selectionVC, animated: true, completion: nil)
    }
    
    
    @IBAction func AppInfo(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "AppInfoScreen") as! AppInfoVC
        present(selectionVC, animated: true, completion: nil)
        
    }
    
    
    
}

