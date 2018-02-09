# *Quarter* – decentralized group collaboration

## Your group's home on the internet

**Quarter** is a social network that is:

* decentralized – hosted on any server
* privacy-minded – all user data encrypted and unreadable to the server
* user-friendly
* free and open-source

Just like in real life, each **quarter** is divided into small communities called **homes**. These are personal social networks for local groups, designed as an alternative to Facebook chats and groups. Homes can be created by anyone, on any server running the Quarter software, and can be joined by whoever knows the group's web address.

Technically, it is a *decentralized*, but *non-federating* network: instead of a central server, there are multiple small, isolated servers – unable to communicate with each other, but completely exchangeable with one another. This means that while a home is created and hosted on a specific server, it can easily be moved to another server, if necessary.

Apart from centralization, a primary goal of the Quarter project is *privacy*. Whenever you post to a home, the post content is encrypted on the client side – that is, in the web browser or in the app – and is only then uploaded to the server. Thanks to the client-side encryption, **the post is unreadable to the server**. Whenever other users log into the home, the encrypted data is downloaded from the server and decrypted in the client.

The encryption is unlocked by a *key* that is known to every member of the home, but not to the server – in fact, **the key is the name of the group**. This makes it easy for home creators to spread the group, and it lets home members decrypt the home's content without even realizing it – all of which is in line with the Quarter project's third goal: usability and user-friendliness.

## Free as in freedom

The Quarter project is free, libre and open-source software (FLOSS), licensed under the [GNU General Public License version 3](https://www.gnu.org/licenses/gpl.html) or any later version, at your discretion.

In order to perform client-side encryption, the web client requires JavaScript to be enabled, but the Quarter project recognizes that many users disable it, because of its fundamental privacy flaws. For this reason, all code required to access a home, including the JavaScript, is free and open-source software. This means that [LibreJS](https://www.gnu.org/software/librejs/) users, as well as others who disable non-free JavaScript by default, can enter and participate in homes without any problems.

## Communication between client and server

All information provided by the user is transmitted to the server via JavaScript in an encrypted, unreadable form. Of course, this also applies to the home's name, as it is the key that unlocks the encryption.

However, there is a *single*, extra-ordinary case where user input is transferred to the server in plain text. This occurs when a user, having forgot their password, requests a new one by entering their e-mail. While the e-mail provided upon registration is encrypted, the e-mail entered to request a new password must be visible to the server in order to send the e-mail message.

### Home name

Each group has its own, unique address, identified by a `#` hash containing its name. Because everything following a `#` is ignored, the name isn't transferred to the server upon request. Instead, it is encrypted by JavaScript in the client and only then transmitted to the server.

Address entered by user:

    https://homes.group/#/church-choir

Address requested by the client, in the eyes of the server:

    https://homes.group/

## Home security

In this section, the topic of security will be discussed. Note that this is not the same thing as privacy.

The simplest home is open to anyone who knows its name, and can be used without logging in, but additional "group security" can be added incrementally:

* Allow/require members to register user accounts
* Protect the group with a password
* Allow registered users to bypass group password

### Home administration

The only group members who are required to register user accounts are the *administrators*.

### Home password

Any piece of text can be a password. Additionally, the home's administration interface has a built-in diceware password generator.

### User accounts

The only information *required* to register a user account is a username and a password. An e-mail address can optionally be provided, which is recommended in case of password loss. Additionally, at each user's discretion, a profile picture can be uploaded.

User accounts are tied to a specific home and are encrypted and decrypted in the same way as all other information.

Even the e-mail address is encrypted until it is used to generate a new password. In this case, it is sent to the server in plain text in order to send the password re-generation e-mail. The official Quarter server-side code does not save it, but modified servers might – it all depends on the person operating the server.

## Moving homes between servers

While Quarter isn't a federated system, it is easy to move a home from one server to another, without any loss of functionality.

When a home is moved, its members are moved, including any potential user accounts. Because each user account is tied to a specific home, this works without any problems.
