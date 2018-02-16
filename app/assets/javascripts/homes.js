// @license magnet:?xt=urn:btih:1f739d935676111cfff4b4693e3816e664797050&dn=gpl-3.0.txt GPL-v3-or-Later

'use strict'

const MD_OPTIONS = { safe: true }

// Returns the home slug from the location hash
// (E.g. "#/my-home/settings" => "my-home")
function key() { // -> String | undefined
    return document.location.hash.split('/')[1]
}

function md_to_html(text) { // -> String
    let reader = new commonmark.Parser()
    let writer = new commonmark.HtmlRenderer(MD_OPTIONS)
    let parsed = reader.parse(text)
    let result = writer.render(parsed)
    return result
}

// Returns argument, unless undefined or null, in which case it returns the
// default profile picture
function picture(picture) { // -> String
    if (picture === undefined || picture === null)
        return 'assets/images/default-128.png'
    else
        return picture
}

// Convenient decryption function, using key() as decryption key
function d(encrypted) { // -> String | null
    if (encrypted === undefined || encrypted === null)
        return null
    else
        return sjcl.json.decrypt(key(), encrypted)
}

// @license-end
