# My personal Site

In this repo I'll store my refactoring of [personal site](http://daddye.it)

## Involved technologies

* The excellent [wintersmith](https://github.com/jnordberg/wintersmith), a static site generator
* The awesome [stylus](https://github.com/LearnBoost/stylus) + [nib](https://github.com/visionmedia/nib) + `include css` to create fancy css
* The template engine [jade](https://github.com/visionmedia/jade)
* [UglifyJS](https://github.com/mishoo/UglifyJS) to compress in a single file my coffee scripts
* [CleanCSS](https://github.com/GoalSmashers/clean-css)
* The cool [Coffee Script], a little language that compile to JavaScript
* [Browserify](https://github.com/substack/node-browserify) to make our life easier with `require`
* [JQuery](https://github.com/jquery/jquery) who need an explanation ???

## Installation

Install [node.js](http://nodejs.org), install the following [NPM](http://npmjs.org) packages:

```sh
$ npm install -g wintersmith stylus nib browserify uglify-js clean-css
```

After that clone the project:

```sh
$ git clone git://github.com/DAddYE/DAddYE.it
$ cd DAddYE.it
```

Install a local copy of `jquery-browserify`

```sh
$ npm install jquery-browserify
```

And finally run the project!

```sh
$ wintersmith preview
```

## Copyright

Copyright (C) 2011 Davide D'Agostino -
[@daddye](http://twitter.com/daddye)

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and
associated documentation files (the “Software”), to deal in the Software
without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.