import UIKit
import LZFluent

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        UIButton()
            .setTitle("ButtonTitle")
            .setTitleColor(.black)
            .setFontSize(17)
            .setFontWeight(.bold)
            .setImage(UIImage(systemName: "icon name"))
            .setImageEdgeInsets(.init(top: 0, left: 0, bottom: 0, right: 0))
            .setContentEdgeInsets(.init(top: 0, left: 0, bottom: 0, right: 0))
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(button)
        
        button.setTranslatesAutoresizingMaskIntoConstraints(false)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 150),
            NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 150),
        ])
    }
}
