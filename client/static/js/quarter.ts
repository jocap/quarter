// TODO: Add license

import Zepto = require('zepto')
import CryptoJS = require('crypto-js')

// -> null => error shown to user
function encrypt(object : Object, key : String) : Object | null {
    if (key === '') {
        console.error('Error: key cannot be empty.')
        return null
    }
    return CryptoJS.AES.encrypt(JSON.stringify(object), key)
}

// -> null => discrete error shown to user, optionally
function decrypt(cipher : Object | null, key : String) : Object | null
{
    if (cipher === null) {
        console.error('Error: cipher cannot be null.')
        return null
    }
    try {
        let bytes = CryptoJS.AES.decrypt(cipher.toString(), key)
        return JSON.parse(bytes.toString(CryptoJS.enc.Utf8))
    } catch(SyntaxError) {
        console.error('Error: cipher could not be decrypted.')
        return null
    }
}

let cipher = encrypt('test', 'key')
let object = decrypt(cipher, 'key')
console.log(object)
