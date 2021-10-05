//
//  Extensions.swift
//  iOS Bootcamp Challenge
//
//  Created by developer on 04/10/21.
//

import Foundation
import UIKit

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

func createAboutPokemonTextForLabel(items: [Item]) -> NSAttributedString {
    let attributesTitle: [NSAttributedString.Key: Any] = [
        .font: UIFont.boldSystemFont(ofSize: 35),
        .foregroundColor: UIColor.black]
    let attributesDescription: [NSAttributedString.Key: Any] = [
        .font: UIFont.boldSystemFont(ofSize: 25),
        .foregroundColor: UIColor.darkGray]
    let attributedMutableString = NSMutableAttributedString()
    for item in items {
        let attributedTitle = NSAttributedString(string: item.title + "\n", attributes: attributesTitle)
        attributedMutableString.append(attributedTitle)
        let attributedDescription = NSAttributedString(string: item.description + "\n", attributes: attributesDescription)
        attributedMutableString.append(attributedDescription)
    }
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.lineSpacing = 3
    attributedMutableString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange())
    attributedMutableString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange( 0, attributedMutableString.length))
    return attributedMutableString
}
