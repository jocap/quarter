# *Quarters* – decentralized group collaboration

A **quarter** is another word for a **community** – a personal social network for local groups, designed with privacy and usability in mind and built as a decentralized alternative to Facebook groups. A quarter lives on a "quarter host" – any server running the free and open-source *Quarters* software – and can be joined by anyone who knows its web address.

It is a *decentralized*, but *non-federating* network: instead of a central server, there are multiple small, isolated servers – unable to communicate with each other, but completely exchangeable with one another. This means that a quarter is created and hosted on a specific server, but can easily be moved to another server, if necessary.

Apart from centralization, the primary goal of the project is *privacy*. Whenever you post to a quarter, the post content is encrypted on the client side – that is, in the web browser or in the app – and uploaded to the server on which the quarter is hosted. Thanks to the client-side encryption, **the post is unreadable to the server**. Whenever another user logs into the group, the encrypted post is downloaded and decrypted on their computer or phone.

The encryption is unlocked by a *key* that is known to every member of the group, but unreadable to the server – in fact, **the key is the name of the group**. This is where the project's other goal, *usability*, comes into play: the name of the group is far easier to remember than any random password, while still reminding the user that few things on the internet is completely private, as anyone who can guess the name of the group is granted access.

## Free as in freedom

The *Quarters* project is free, libre and open-source software (FLOSS), licensed under the [GNU General Public License version 3](https://www.gnu.org/licenses/gpl.html) or any later version, at your discretion.

In order to perform client-side encryption, the web client requires JavaScript to be enabled. At the same time, the *Quarters* project recognizes the fundamental flaws of JavaScript that cause distrusting users to disable it. For this reason, all code required to access a quarter, including the JavaScript, is free and open-source software. This means that [LibreJS](https://www.gnu.org/software/librejs/) users, as well as others who disable non-free JavaScript by default, can access quarters without any problems.

## Communication between client and server

All information provided by the user is transmitted to the server via JavaScript in an encrypted, unreadable form. Of course, this also applies to the quarter's name, as it is the key that unlocks the encryption.

However, there is a *single*, extra-ordinary case where user input is transferred to the server in plain text. This occurs when a user, having forgot their password, requests a new one by entering their e-mail.

### Quarter name

Each group has its own, unique address, identified by a `#` hash containing its name. Because everything following a `#` is ignored, the name isn't transferred to the server upon request. Instead, it is encrypted by JavaScript in the client and only then transmitted to the server.

Address entered by user:

    https://quarters.group/#/church-choir

Address requested by the client, in the eyes of the server:

    https://quarters.group/

## Quarter security

In this section, the topic of security will be discussed. Note that this is not the same thing as privacy.

The simplest quarter is open to anyone who knows its name, and can be used without logging in, but additional "group security" can be added incrementally:

* Allow/require members to register user accounts
* Protect the group with a password
* Allow registered users to bypass group password

### Quarter administration

The only group members who are required to register user accounts are the *administrators*.

### Quarter password

Any piece of text can be a password. Additionally, the quarter's administration interface has a built-in diceware password generator.

### User accounts

The only information *required* to register a user account is a username and a password. E-mail address is optional, but recommended in case of password loss. Additionally, at each user's discretion, a profile picture can be uploaded.

User accounts are tied to a specific quarter and are encrypted and decrypted in the same way as all other information.

Even the e-mail address is encrypted until it is used to generate a new password. In this case, it is sent to the server in plain text in order to send the password re-generation e-mail. The original Quarters server does not save it, but modified servers might – it all depends on the person operating the server.

## Moving quarters between servers

While Quarters isn't a federated system, it is easy to move a quarter from one server to another, without any loss of functionality.

When a quarter is moved, its members are moved, including any potential user accounts. Because each user account is tied to a specific quarter, this works without any problems.