Fix preventClickSelectsAll behaviour in firefox.

Loosely based on
https://superuser.com/questions/540851/go-back-to-not-selecting-the-whole-url-when-i-click-the-address-bar/1559926
and https://github.com/SebastianSimon/firefox-omni-tweaks
(but I don't use the searchbar so I don't touch it).

To get a `.deb` run `./build.sh`.

Can also be run directly as `./postinst manual`.

May need to `rm -r ~/.cache/mozilla/firefox/` if you ran the unpatched firefox.
