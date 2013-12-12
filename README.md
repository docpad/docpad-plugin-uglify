# [UglifyJS](https://github.com/mishoo/UglifyJS) Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/docpad/docpad-plugin-uglify.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-uglify "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-uglify.png)](https://npmjs.org/package/docpad-plugin-uglify "View this project on NPM")
[![Flattr donate button](https://raw.github.com/balupton/flattr-buttons/master/badge-89x18.gif)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](https://www.paypalobjects.com/en_AU/i/btn/btn_donate_SM.gif)](https://www.paypal.com/au/cgi-bin/webscr?cmd=_flow&SESSION=IHj3DG3oy_N9A9ZDIUnPksOi59v0i-EWDTunfmDrmU38Tuohg_xQTx0xcjq&dispatch=5885d80a13c0db1f8e263663d3faee8d14f86393d55a810282b64afed84968ec "Donate once-off to this project using Paypal")

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


## History
[You can discover the history inside the `History.md` file](https://github.com/bevry/docpad-plugin-uglify/blob/master/History.md#files)


## Contributing
[You can discover the contributing instructions inside the `Contributing.md` file](https://github.com/robloach/docpad-plugin-cssmin/blob/master/CONTRIBUTING.md#files)


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2012+ [Takeharu.Oshida](http://georgeosddev.github.com)
