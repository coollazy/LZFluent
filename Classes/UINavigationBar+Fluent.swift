import Foundation
import UIKit

extension UINavigationBar {
    @discardableResult public func setTranslucent(_ translucent: Bool) -> Self {
        if #available(iOS 13, *) {
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
    
    @discardableResult public func setTitleColor(_ color: UIColor) -> Self {
        if #available(iOS 13, *) {
            standardAppearance.titleTextAttributes.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
            standardAppearance.buttonAppearance.normal.titleTextAttributes.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
            scrollEdgeAppearance = standardAppearance
        } else {
            titleTextAttributes?.updateValue(color, forKey: NSAttributedString.Key.foregroundColor)
        }
        return self
    }
    
    @discardableResult public func setTitleFontSize(_ size: CGFloat) -> Self {
        var newFont = UIFont.systemFont(ofSize: size)
        if #available(iOS 13, *) {
            if let originalFont = standardAppearance.titleTextAttributes[NSAttributedString.Key.font] as? UIFont {
                newFont = originalFont.withSize(size)
            }
            standardAppearance.titleTextAttributes.updateValue(newFont, forKey: NSAttributedString.Key.font)
            scrollEdgeAppearance = standardAppearance
        } else {
            if titleTextAttributes == nil {
                titleTextAttributes = [:]
            }
            if let originalFont = titleTextAttributes?[NSAttributedString.Key.font] as? UIFont {
                newFont = originalFont.withSize(size)
            }
            titleTextAttributes?.updateValue(newFont, forKey: NSAttributedString.Key.font)
        }
        return self
    }
    
    @discardableResult public func setTitleFontWeight(_ weight: UIFont.Weight) -> Self {
        var newFont = UIFont.systemFont(ofSize: 17, weight: weight)
        if #available(iOS 13, *) {
            if let originalFont = standardAppearance.titleTextAttributes[NSAttributedString.Key.font] as? UIFont {
                newFont = newFont.withSize(originalFont.pointSize)
            }
            standardAppearance.titleTextAttributes.updateValue(newFont, forKey: NSAttributedString.Key.font)
            scrollEdgeAppearance = standardAppearance
        } else {
            if titleTextAttributes == nil {
                titleTextAttributes = [:]
            }
            if let originalFont = titleTextAttributes?[NSAttributedString.Key.font] as? UIFont {
                newFont = newFont.withSize(originalFont.pointSize)
            }
            titleTextAttributes?.updateValue(newFont, forKey: NSAttributedString.Key.font)
        }
        return self
    }
    
    @discardableResult public func setBarBackgroundColor(_ color: UIColor) -> Self {
        if #available(iOS 13, *) {
            standardAppearance.backgroundColor = color
            scrollEdgeAppearance = standardAppearance
        } else {
            barTintColor = color
        }
        return self
    }
}
