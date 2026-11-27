# Changelog

All notable changes to Soplos Icons are documented in this file.

## [1.0.0] - 2026-11-27

First release: an original SVG icon theme for Soplos Linux in amber, orange,
red and graphite, with 1,228 icon names.

### Added

- Scalable icons for applications, places, devices, file types, categories,
  actions, status and emblems.
- Symbolic icons for places, actions, status and emblems.
- Panel icons for dark and light panels: audio volume, battery, network,
  notifications and Telegram.
- Icons for Tyron and Boro.
- File type icons for Debian packages and CD media.
- `install.sh` and `uninstall.sh`, to install the theme for one user without
  `sudo`.
- README with previews on a dark and a light background.
- The `soplos-icons` Debian package, which installs the theme in
  `/usr/share/icons/Soplos` and recommends Adwaita, Breeze and hicolor.
- License: Creative Commons Attribution-ShareAlike 4.0 International.

### Changed

- New home, favorites, file manager and trash icons, with transparency in the
  full trash, and places drawn in the same style.
- The theme no longer inherits from Kora Soplos. Missing icons come from
  Adwaita, Breeze and hicolor.

### Fixed

- Network icons.
- `gnome-session-hibernate` and `xfsm-hibernate` showed the suspend icon; they
  now show the hibernate one. The misspelled alias `gnome-session-hebirnate` is
  gone.
- A broken Bluetooth link, `network-wireless-bluetooth-symbolic`.
- `index.theme` declared four symbolic folders that do not exist.
- `install.sh` copied the git history, the screenshots and the scripts into the
  icons of the user; it now copies only the theme.
- The README said the theme inherited from Kora Soplos Dark and gave the wrong
  number of icons.
