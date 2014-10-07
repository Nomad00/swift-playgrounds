// Playground - noun: a place where people can play

import UIKit

extension UITextField {
    /**
    Method to set the attributedPlaceholder based on the existing placeholder & text color.
    Note: This only exists due to an issue setting this value through the Storyboard.
    */
    func createAttributedPlaceholderFromPlaceholder() {
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!,
            attributes: [NSForegroundColorAttributeName : self.textColor])
    }

    /** 
    Method to setup the leftView property of the UITextField to accomodate a passed in image.
    @param image : The image to display in the leftView.
    */
    func configureLeftView(#image : UIImage!)
    {
        let imageWidth = image.size.width
        let imageHeight = image.size.height
        self.leftViewMode = .Always

        // Create a view wide enough to center the image in.
        let holdingView = UIView(frame: CGRect(x: 0, y: 0, width: (imageWidth * 2), height: imageHeight))

        // Create the image view, positioned to center the image.
        let imageView = UIImageView(frame: CGRect(x: (imageWidth / 2), y: 0, width: imageWidth, height: imageHeight))

        // Add the image.
        imageView.image = image
        holdingView.addSubview(imageView)
        self.leftView = holdingView
    }

    /**
    Method to setup the rightView property of the UITextField to accomodate a passed in UIButton.
    @param button : The button to display in the rightView.
    */
    func configureRightView(#button : UIButton!)
    {
        // Configure the rightView behavior.
        self.rightViewMode = .Always

        // Add the button.
        self.rightView = button
    }
}

let testTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 44))
testTextField.placeholder = "Username"
testTextField.textColor = UIColor.blueColor()

testTextField.createAttributedPlaceholderFromPlaceholder()

let ourImage = UIImage(named: "ic_user_grey")

testTextField.configureLeftView(image: ourImage)

let ourButton = UIButton.buttonWithType(UIButtonType.InfoDark) as UIButton
ourButton.frame = CGRect(x: 0, y: 0, width: 44, height: 44)

testTextField.configureRightView(button: ourButton)

