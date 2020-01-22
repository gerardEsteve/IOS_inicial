import Foundation
import UIKit

class Colors {
    class func colorNavBar() -> UIColor {
        return UIColor(netHex: 0x1e60bc)
    }
    class func colorButton() -> UIColor {
        return UIColor(netHex: 0x222334)
    }
    class func colorButtonBright() -> UIColor {
        return UIColor(netHex: 0xe6b63a)
    }
    class func colorBackground() -> UIColor {
        return UIColor(netHex: 0x22233e)
    }
    class func colorBackgroundLight() -> UIColor {
        return UIColor(netHex: 0xf5f5f5)
    }
    class func colorMesaLibre() -> UIColor {
        return UIColor.flatGreenDark()
    }
    class func colorMesaReservada() -> UIColor {
        return UIColor.flatYellowDark()
    }
    class func colorMesaOcupada() -> UIColor {
        return UIColor.flatWatermelon()
    }
    
    class var colorPrecio: UIColor {
        return UIColor.flatMintDark()
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex: Int) {
        self.init(red: (netHex >> 16) & 0xff, green: (netHex >> 8) & 0xff, blue: netHex & 0xff)
    }
    
    class func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha/255.0)
    }
    
    class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1.0)
    }
    
    class func hsba(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor.init(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
    }
    
    class func hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat) -> UIColor {
        return UIColor.init(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: 1.0)
    }
    
    class func flatBlack () -> UIColor {
        return UIColor.hsb(hue: 0, saturation: 0, brightness: 17)
    }
    
    class func flatBlue () -> UIColor {
        return UIColor.hsb(hue: 224, saturation: 50, brightness: 63)
    }
    
    class func flatBrown () -> UIColor {
        return UIColor.hsb(hue: 24, saturation: 45, brightness: 37)
    }
    
    class func flatCoffee () -> UIColor {
        return UIColor.hsb(hue: 25, saturation: 31, brightness: 64)
    }
    
    class func flatForestGreen () -> UIColor {
        return UIColor.hsb(hue: 138, saturation: 45, brightness: 37)
    }
    
    class func flatGray () -> UIColor {
        return UIColor.hsb(hue: 184, saturation: 10, brightness: 65)
    }
    
    class func flatGreen () -> UIColor {
        return UIColor.hsb(hue: 145, saturation: 77, brightness: 80)
    }
    
    class func flatLime () -> UIColor {
        return UIColor.hsb(hue: 74, saturation: 70, brightness: 78)
    }
    
    class func flatMagenta () -> UIColor {
        return UIColor.hsb(hue: 283, saturation: 51, brightness: 71)
    }
    
    class func flatMaroon () -> UIColor {
        return UIColor.hsb(hue: 5, saturation: 65, brightness: 47)
    }
    
    class func flatMint () -> UIColor {
        return UIColor.hsb(hue: 168, saturation: 86, brightness: 74)
    }
    
    class func flatNavyBlue () -> UIColor {
        return UIColor.hsb(hue: 210, saturation: 45, brightness: 37)
    }
    
    class func flatOrange () -> UIColor {
        return UIColor.hsb(hue: 28, saturation: 85, brightness: 90)
    }
    
    class func flatPink () -> UIColor {
        return UIColor.hsb(hue: 324, saturation: 49, brightness: 96)
    }
    
    class func flatPlum () -> UIColor {
        return UIColor.hsb(hue: 300, saturation: 45, brightness: 37)
    }
    
    class func flatPowderBlue () -> UIColor {
        return UIColor.hsb(hue: 222, saturation: 24, brightness: 95)
    }
    
    class func flatPurple () -> UIColor {
        return UIColor.hsb(hue: 253, saturation: 52, brightness: 77)
    }
    
    class func flatRed () -> UIColor {
        return UIColor.hsb(hue: 6, saturation: 74, brightness: 91)
    }
    
    class func flatSand () -> UIColor {
        return UIColor.hsb(hue: 42, saturation: 25, brightness: 94)
    }
    
    class func flatSkyBlue () -> UIColor {
        return UIColor.hsb(hue: 204, saturation: 76, brightness: 86)
    }
    
    class func flatTeal () -> UIColor {
        return UIColor.hsb(hue: 195, saturation: 55, brightness: 51)
    }
    
    class func flatWatermelon () -> UIColor {
        return UIColor.hsb(hue: 356, saturation: 53, brightness: 94)
    }
    
    class func flatWhite () -> UIColor {
        return UIColor.hsb(hue: 192, saturation: 2, brightness: 95)
    }
    
    class func flatYellow () -> UIColor {
        return UIColor.hsb(hue: 48, saturation: 99, brightness: 100)
    }
    
    class func flatBlackDark () -> UIColor {
        return UIColor.hsb(hue: 0, saturation: 0, brightness: 15)
    }
    
    class func flatBlueDark () -> UIColor {
        return UIColor.hsb(hue: 224, saturation: 56, brightness: 51)
    }
    
    class func flatBrownDark () -> UIColor {
        return UIColor.hsb(hue: 25, saturation: 45, brightness: 31)
    }
    
    class func flatCoffeeDark () -> UIColor {
        return UIColor.hsb(hue: 25, saturation: 34, brightness: 56)
    }
    
    class func flatForestGreenDark () -> UIColor {
        return UIColor.hsb(hue: 135, saturation: 44, brightness: 31)
    }
    
    class func flatGrayDark () -> UIColor {
        return UIColor.hsb(hue: 184, saturation: 10, brightness: 55)
    }
    
    class func flatGreenDark () -> UIColor {
        return UIColor.hsb(hue: 145, saturation: 78, brightness: 68)
    }
    
    class func flatLimeDark () -> UIColor {
        return UIColor.hsb(hue: 74, saturation: 81, brightness: 69)
    }
    
    class func flatMagentaDark () -> UIColor {
        return UIColor.hsb(hue: 282, saturation: 61, brightness: 68)
    }
    
    class func flatMaroonDark () -> UIColor {
        return UIColor.hsb(hue: 4, saturation: 68, brightness: 40)
    }
    
    class func flatMintDark () -> UIColor {
        return UIColor.hsb(hue: 168, saturation: 86, brightness: 63)
    }
    
    class func flatNavyBlueDark () -> UIColor {
        return UIColor.hsb(hue: 210, saturation: 45, brightness: 31)
    }
    
    class func flatOrangeDark () -> UIColor {
        return UIColor.hsb(hue: 24, saturation: 100, brightness: 83)
    }
    
    class func flatPinkDark () -> UIColor {
        return UIColor.hsb(hue: 327, saturation: 57, brightness: 83)
    }
    
    class func flatPlumDark () -> UIColor {
        return UIColor.hsb(hue: 300, saturation: 46, brightness: 31)
    }
    
    class func flatPowderBlueDark () -> UIColor {
        return UIColor.hsb(hue: 222, saturation: 28, brightness: 84)
    }
    
    class func flatPurpleDark () -> UIColor {
        return UIColor.hsb(hue: 253, saturation: 56, brightness: 64)
    }
    
    class func flatRedDark () -> UIColor {
        return UIColor.hsb(hue: 6, saturation: 78, brightness: 75)
    }
    
    class func flatSandDark () -> UIColor {
        return UIColor.hsb(hue: 42, saturation: 30, brightness: 84)
    }
    
    class func flatSkyBlueDark () -> UIColor {
        return UIColor.hsb(hue: 204, saturation: 78, brightness: 73)
    }
    
    class func flatTealDark () -> UIColor {
        return UIColor.hsb(hue: 196, saturation: 54, brightness: 45)
    }
    
    class func flatWatermelonDark () -> UIColor {
        return UIColor.hsb(hue: 358, saturation: 61, brightness: 85)
    }
    
    class func flatWhiteDark () -> UIColor {
        return UIColor.hsb(hue: 204, saturation: 5, brightness: 78)
    }
    
    class func flatYellowDark () -> UIColor {
        return UIColor.hsb(hue: 40, saturation: 100, brightness: 100)
    }
    
}
