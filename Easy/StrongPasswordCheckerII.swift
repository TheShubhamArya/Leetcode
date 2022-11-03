// 2299. Strong Password Checker II

class Solution {
    func strongPasswordCheckerII(_ password: String) -> Bool {
        if password.count < 7 {
            return false
        }
        var hasLowerCase = false
        var hasUpperCase = false
        var hasDigits = false
        var hasSpecialChar = false
        
        var prevChar = ""
        for char in password {
            if char.isLowercase {
                hasLowerCase = true
            } else if char.isUppercase {
                hasUpperCase = true
            }
            if char.isNumber {
                hasDigits = true
            }
            if "!@#$%^&*()-+".contains(char) {
                hasSpecialChar = true
            }
            if prevChar == String(char) {
                return false
            }
            prevChar = String(char)
        }
        
        if hasLowerCase && hasUpperCase && hasDigits && hasSpecialChar{
            return true
        } else {
            return false
        }
    }
}
