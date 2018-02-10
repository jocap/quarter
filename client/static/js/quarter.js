// @license magnet:?xt=urn:btih:1f739d935676111cfff4b4693e3816e664797050&dn=gpl-3.0.txt GPL-v3-or-Later

"use strict";

// -> null => error shown to user
function encrypt(object, key) {
    if (key === '') {
        console.error('Error: key cannot be empty.')
        return null
    }
    return CryptoJS.AES.encrypt(JSON.stringify(object), key)
}

// -> null => discrete error shown to user, optionally
function decrypt(cipher, key) {
    if (cipher === null) {
        console.error('Error: cipher cannot be null.')
        return null
    }
    try {
        var bytes = CryptoJS.AES.decrypt(cipher.toString(), key)
        return JSON.parse(bytes.toString(CryptoJS.enc.Utf8))
    }
    catch (SyntaxError) {
        console.error('Error: cipher could not be decrypted.')
        return null
    }
}

// @license-end
