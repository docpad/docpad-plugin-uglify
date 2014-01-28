# [UglifyJS](https://github.com/mishoo/UglifyJS) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](http://img.shields.io/travis-ci/docpad/docpad-plugin-uglify.png?branch=master)](http://travis-ci.org/docpad/docpad-plugin-uglify "Check this project's build status on TravisCI")
[![NPM version](http://badge.fury.io/js/docpad-plugin-uglify.png)](https://npmjs.org/package/docpad-plugin-uglify "View this project on NPM")
[![Dependency Status](https://david-dm.org/docpad/docpad-plugin-uglify.png?theme=shields.io)](https://david-dm.org/docpad/docpad-plugin-uglify)
[![Development Dependency Status](https://david-dm.org/docpad/docpad-plugin-uglify/dev-status.png?theme=shields.io)](https://david-dm.org/docpad/docpad-plugin-uglify#info=devDependencies)<br/>
[![Gittip donate button](http://img.shields.io/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](http://img.shields.io/bitcoin/donate.png?color=yellow)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")

<!-- /BADGES -->


Minify JavaScript files with the `uglify: true` meta data, using [UglifyJS](https://github.com/mishoo/UglifyJS2).


## Install

```bash
docpad install uglify
```


## Usage

Create a JavaScript file with the *uglify* option:
``` javascript
---
uglify: true
---

var hello = "Hello World!";
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

``` javascript
---
uglify:
	mangle: false
---

// The "hello" variable name will stay the same.
var hello = "Hello World!";
```

<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/docpad/docpad-plugin-uglify/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/docpad/docpad-plugin-uglify/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (https://github.com/robloach)
- Takeharu Oshida (https://github.com/georgeOsdDev)
- Benjamin Lupton <b@lupton.cc> (https://github.com/balupton)

### Sponsors

No sponsors yet! Will you be the first?

[![Gittip donate button](http://img.shields.io/gittip/docpad.png)](https://www.gittip.com/docpad/ "Donate weekly to this project using Gittip")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/344188/balupton-on-Flattr "Donate monthly to this project using Flattr")
[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QB8GQPZAH84N6 "Donate once-off to this project using Paypal")
[![BitCoin donate button](http://img.shields.io/bitcoin/donate.png?color=yellow)](https://coinbase.com/checkouts/9ef59f5479eec1d97d63382c9ebcb93a "Donate once-off to this project using BitCoin")

### Contributors

These amazing people have contributed code to this project:

- [Benjamin Lupton](https://github.com/balupton) <b@lupton.cc> — [view contributions](https://github.com/docpad/docpad-plugin-uglify/commits?author=balupton)
- [Rob Loach](https://github.com/robloach) — [view contributions](https://github.com/docpad/docpad-plugin-uglify/commits?author=robloach)
- [Takeharu Oshida](https://github.com/georgeOsdDev) — [view contributions](https://github.com/docpad/docpad-plugin-uglify/commits?author=georgeOsdDev)

[Become a contributor!](https://github.com/docpad/docpad-plugin-uglify/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Takeharu Oshida (http://georgeosddev.github.com)

<!-- /LICENSE -->


