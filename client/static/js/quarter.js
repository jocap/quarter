"use strict";
// TODO: Add license
exports.__esModule = true;
var CryptoJS = require("crypto-js");
// -> null => error shown to user
function encrypt(object, key) {
    if (key === '') {
        console.error('Error: key cannot be empty.');
        return null;
    }
    return CryptoJS.AES.encrypt(JSON.stringify(object), key);
}
// -> null => discrete error shown to user, optionally
function decrypt(cipher, key) {
    if (cipher === null) {
        console.error('Error: cipher cannot be null.');
        return null;
    }
    try {
        var bytes = CryptoJS.AES.decrypt(cipher.toString(), key);
        return JSON.parse(bytes.toString(CryptoJS.enc.Utf8));
    }
    catch (SyntaxError) {
        console.error('Error: cipher could not be decrypted.');
        return null;
    }
}
var cipher = encrypt('test', 'key');
var object = decrypt(cipher, 'key');
console.log(object);
