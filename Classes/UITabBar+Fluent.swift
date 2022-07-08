import Foundation
import UIKit

extension UITabBar {
    @discardableResult func setTranslucent(_ translucent: Bool) -> Self {
        if #available(iOS 15, *) {
            if translucent {
                standardAppearance.configureWithTransparentBackground()
            } else {
                standardAppearance.configureWithOpaqueBackground()
            }
            scrollEdgeAppearance = standardAppearance
        } else {
            isTranslucent = translucent
        }
        return self
    }
    
    @discardableResult func setBarItemSelectedColor(_ selectedColor: UIColor, unselectedColor: UIColor = .lightGray) -> Self {
        if #available(iOS 15, *) {
            updateTabBarItemAppearance(standardAppearance.compactInlineLayoutAppearance, selectedColor: selectedColor, unselectedColor: unselectedColor)
            updateTabBarItemAppearance(standardAppearance.inlineLayoutAppearance, selectedColor: selectedColor, unselectedColor: unselectedColor)
            updateTabBarItemAppearance(standardAppearance.stackedLayoutAppearance, selectedColor: selectedColor, unselectedColor: unselectedColor)
            scrollEdgeAppearance = standardAppearance
        } else {
            tintColor = selectedColor
        }
        return self
    }
    
    @available(iOS 13.0, *)
    private func updateTabBarItemAppearance(_ appearance: UITabBarItemAppearance, selectedColor: UIColor, unselectedColor: UIColor = .lightGray) {
        appearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor : selectedColor]
        appearance.selected.iconColor = selectedColor
        appearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor : unselectedColor]
        appearance.normal.iconColor = unselectedColor
    }
    
    @discardableResult func setBarBackgroundColor(_ color: UIColor) -> Self {
        if #available(iOS 15, *) {
            standardAppearance.backgroundColor = color
            scrollEdgeAppearance = standardAppearance
        } else {
            barTintColor = color
        }
        return self
    }
}
