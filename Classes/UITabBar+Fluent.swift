import Foundation
import UIKit

extension UITabBar {
    @discardableResult
    public func setTranslucent(_ translucent: Bool) -> Self {
        if #available(iOS 15, *) {
            if translucent {
                standardAppearance.configureWithTransparentBackground()
            } else {
                standardAppearance.configureWithOpaqueBackground()
            }
#if swift(>=5.5)
            scrollEdgeAppearance = standardAppearance
#endif
        } else {
            isTranslucent = translucent
        }
        return self
    }
    
    @discardableResult
    public func setBarItemSelectedColor(_ selectedColor: UIColor, unselectedColor: UIColor = .lightGray) -> Self {
        if #available(iOS 15, *) {
            updateTabBarItemAppearance(standardAppearance.compactInlineLayoutAppearance, selectedColor: selectedColor, unselectedColor: unselectedColor)
            updateTabBarItemAppearance(standardAppearance.inlineLayoutAppearance, selectedColor: selectedColor, unselectedColor: unselectedColor)
            updateTabBarItemAppearance(standardAppearance.stackedLayoutAppearance, selectedColor: selectedColor, unselectedColor: unselectedColor)
#if swift(>=5.5)
            scrollEdgeAppearance = standardAppearance
#endif
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
    
    @discardableResult
    public func setBarBackgroundColor(_ color: UIColor) -> Self {
        if #available(iOS 15, *) {
            standardAppearance.backgroundColor = color
#if swift(>=5.5)
            scrollEdgeAppearance = standardAppearance
#endif
        } else {
            barTintColor = color
        }
        return self
    }
}

extension UITabBar {
    @discardableResult
    public static func setTranslucent(_ translucent: Bool) -> UITabBar.Type {
        if #available(iOS 15, *) {
#if swift(>=5.5)
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UITabBarAppearance()
            if translucent {
                scrollEdgeAppearance.configureWithTransparentBackground()
            } else {
                scrollEdgeAppearance.configureWithOpaqueBackground()
            }
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
#endif
        } else {
            appearance().isTranslucent = translucent
        }
        return self
    }
    
    @discardableResult
    public static func setBarItemSelectedColor(_ selectedColor: UIColor, unselectedColor: UIColor = .lightGray) -> UITabBar.Type {
        if #available(iOS 15, *) {
#if swift(>=5.5)
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UITabBarAppearance()
            scrollEdgeAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: selectedColor]
            scrollEdgeAppearance.stackedLayoutAppearance.selected.iconColor = selectedColor
            scrollEdgeAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: unselectedColor]
            scrollEdgeAppearance.stackedLayoutAppearance.normal.iconColor = unselectedColor
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
#endif
        }
        else {
            UITabBar.appearance().barTintColor = selectedColor
        }
        return self
    }
    
    @discardableResult
    public static func setBarBackgroundColor(_ color: UIColor) -> UITabBar.Type {
        if #available(iOS 15, *) {
#if swift(>=5.5)
            let scrollEdgeAppearance = appearance().scrollEdgeAppearance ?? UITabBarAppearance()
            scrollEdgeAppearance.backgroundColor = color
            
            appearance().standardAppearance = scrollEdgeAppearance
            appearance().scrollEdgeAppearance = scrollEdgeAppearance
#endif
        }
        else {
            UITabBar.appearance().tintColor = color
        }
        return self
    }
}
