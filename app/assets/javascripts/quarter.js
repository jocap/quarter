// @license magnet:?xt=urn:btih:1f739d935676111cfff4b4693e3816e664797050&dn=gpl-3.0.txt GPL-v3-or-Later

'use strict'

class Quarter {

    constructor() {
        Quarter.MD_OPTIONS = { safe: true }

        Quarter.check_hash()
        $(window).on('hashchange', Quarter.check_hash)

        // Add Intercooler encryption/decryption events
    }

    /** User interaction **/

    static check_hash() {
        if (Quarter.key === undefined) {
            if (window.location.href.includes('#')) {
                // Invalid hash format -> display error
                Quarter.error('Improper hash')
            } else {
                // No hash -> display front page
            }
        } else if (Quarter.key !== Quarter.last_key) {
            // Home slug has changed
            Quarter.note('Loading home: ' + Quarter.key)


        }
        Quarter.last_key = Quarter.key
    }

    static error(message) {
        alert(message)
    }

    static note(message) {
        alert(message)
    }

    /** Cryptography **/

    static get key() { // -> String | undefined
        return document.location.hash.split('/')[1]
        // (E.g. "#/my-home/settings" => "my-home")
    }

    // Decrypt text with Quarter.key
    static decrypt(encrypted) { // -> String | null
        if (encrypted === undefined || encrypted === null)
            return null
        else
            return sjcl.json.decrypt(Quarter.key, encrypted)
    }

    /** Templating **/

    static md_to_html(text) { // -> String
        let reader = new commonmark.Parser()
        let writer = new commonmark.HtmlRenderer(Quarter.MD_OPTIONS)
        let parsed = reader.parse(text)
        let result = writer.render(parsed)
        return result
    }

    // Returns argument, unless undefined or null, in which case it returns the
    // default profile picture
    static picture(picture) { // -> String
        if (picture === undefined || picture === null)
            return 'assets/images/default-128.png'
        else
            return picture
    }
}

var quarter = new Quarter()

// @license-end
