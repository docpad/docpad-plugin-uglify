# [UglifyJS](https://github.com/mishoo/UglifyJS) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-uglify.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-uglify "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-uglify.png)](https://npmjs.org/package/docpad-plugin-uglify "View this project on NPM")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/au/cgi-bin/webscr?cmd=_flow&SESSION=IHj3DG3oy_N9A9ZDIUnPksOi59v0i-EWDTunfmDrmU38Tuohg_xQTx0xcjq&dispatch=5885d80a13c0db1f8e263663d3faee8d14f86393d55a810282b64afed84968ec "Donate once-off to this project using Paypal")

<!-- /BADGES -->

Minify all JavaScript in the `src/documents` folder, using
[UglifyJS](http://github.com/mishoo/UglifyJS), in [DocPad](https://docpad.org).

Convention:  `.js.anything`


## Install

```bash
$ docpad install uglify
```


## Configure

### Defaults

The default configuration for this plugin is the equivalant of adding the
following UglifyJS options to your [DocPad configuration file](http://docpad.org/docs/config):

``` coffee
plugins:
  uglify:
    # Disable UglifyJS on the development environment.
    environments:
      development:
        enabled: false

    # Pass false to skip compressing entirely. Pass an object to specify custom
    # compressor options: http://lisperator.net/uglifyjs/compress .
    compress: {}

    # Pass false to skip mangling names.
    mangle: {}
```


### Template Configuration

It is possible to override the default configuration on a per-template basis:

``` css
---
uglify:
  mangle: false
---

var hi = "Hello!";
```

<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-sass/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-sass/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton)
- Rob Loach (https://github.com/RobLoach)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")

### Contributors

These amazing people have contributed code to this project:

- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton) - [view contributions](https://github.com/docpad/docpad-plugin-uglify/commits?author=balupton)
- Takeharu Oshida (https://github.com/georgeOsdDev) - [view contributions](https://github.com/docpad/docpad-plugin-uglify/commits?author=georgeOsdDev)
- RobLoach (https://github.com/RobLoach) - [view contributions](https://github.com/docpad/docpad-plugin-uglify/commits?author=RobLoach)

[Become a contributor!](https://github.com/docpad/docpad-plugin-uglify/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; 2012+ Bevry Pty Ltd <us@bevry.me> (http://bevry.me)

<!-- /LICENSE -->
