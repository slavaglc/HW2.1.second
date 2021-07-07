import UIKit

enum LightType {
    case red, yellow, green
}

class ViewController: UIViewController {
    var lightType: LightType = .red
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = redView.frame.size.width/2.0
        yellowView.layer.cornerRadius = redView.frame.size.width/2.0
        greenView.layer.cornerRadius = redView.frame.size.width/2.0
    }
    
    private func changeLight() {
        switch lightType {
        case .red:
            greenView.alpha = 0.3
            redView.alpha = 1.0
            lightType = .yellow
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1.0
            lightType = .green
        case .green:
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
            lightType = .red
        }
     }
    
    @IBAction func tapButton() {
        startButton.setTitle("Next", for: .normal)
        changeLight()
    }
}

