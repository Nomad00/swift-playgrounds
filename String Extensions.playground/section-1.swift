// Playground - noun: a place where people can play

import UIKit

public extension String
{
    /**
    A convenience method which determines if there is anything besides whitespace & newline characters within the string.
    */
    func isNotEmpty() -> Bool
    {
        let trimmedString = self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        if (countElements(trimmedString) == 0)
        {
            return false
        }

        return true
    }
}

let notEmptyString = "42"
var test = notEmptyString.isNotEmpty()

let emptyString = " "
test = emptyString.isNotEmpty()
