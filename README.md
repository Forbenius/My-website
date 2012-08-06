# My personal Site

In this repo I'll store my refactoring of [personal site](http://daddye.it)

## Involved technologies

* The excellent [wintersmith](https://github.com/jnordberg/wintersmith), a static site generator
* The awesome [stylus](https://github.com/LearnBoost/stylus) + [nib](https://github.com/visionmedia/nib) + `include css` to create fancy css
* The template engine [jade](https://github.com/visionmedia/jade)
* [UglifyJS](https://github.com/mishoo/UglifyJS) to compress in a single file my coffee scripts
* [CleanCSS](https://github.com/GoalSmashers/clean-css)
* The cool [Coffee Script](http://coffeescript.org), a little language that compile to JavaScript
* [Browserify](https://github.com/substack/node-browserify) to make our life easier with `require`
* [JQuery](https://github.com/jquery/jquery) who need an explanation ...

## Installation

Install [node.js](http://nodejs.org), install the following [NPM](http://npmjs.org) packages from your terminal:

```sh
$ npm install -g wintersmith wintersmith-perian moment imagemagick
```

After that clone the project:

```sh
$ git clone git://github.com/DAddYE/daddye.github.com
$ cd daddye.github.com/src
```

**REMEMBER:** sources lives in `src` directory.

To preview my site run:

```sh
$ wintersmith preview
```

To build it you can run `make` inside the `src` folder, otherwise:

```sh
$ wintersmith build -o ../
```

## Copyright

Copyright (C) 2012 Davide D'Agostino -
[@DAddYE](http://twitter.com/daddye)
