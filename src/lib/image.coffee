fs   = require 'fs'
path = require 'path'
im   = require 'imagemagick'
url  = require 'url'
_    = require 'wintersmith/node_modules/underscore'
util = require 'util'

module.exports = (wintersmith, callback) ->

  {ContentTree, ContentPlugin, logger} = wintersmith
  {Page} = wintersmith.defaultPlugins

  class Image extends ContentPlugin
    constructor: (@_filename, @_base) ->
      @_thumb_path = '/assets/img/thumbs'
      thumb_path = path.join(@_base, @_thumb_path)
      fs.mkdirSync(thumb_path) unless fs.existsSync(thumb_path)

    getFilename: ->
      @_filename

    render: (args..., callback) ->
      try
        rs = fs.createReadStream path.join(@_base, @_filename)
        callback null, rs
      catch error
        callback error

    thumb: (size) ->
      thumb = size + path.basename(@_filename, '.*')
      thumb = path.join @_thumb_path, thumb
      logger.verbose "Resizing #{thumb} at #{size}"
      [w, h] = size.split 'x'
      options =
        srcPath: path.join(@_base, @_filename)
        dstPath: path.join(@_base, thumb)
        strip: false
        customArgs: ['-gravity', 'center', '-extent', size.replace(/[^\dx]/, '')]
      options.width  = w if w isnt ''
      options.height = h if h isnt ''
      im.resize options, (error, stdout, stderr) ->
        if error
          logger.error "Error risizing #{thumb} with #{util.inspect options}: #{stdout},#{stderr}"
          throw error
      thumb

    @fromFile = (filename, base, callback) ->
      callback null, new Image(filename, base)

  wintersmith.registerContentPlugin 'images', '**/*.{png,jpeg,jpg}', Image

  ##
  # Now we can list images of the current content
  #
  ContentPlugin.property 'basename', ->
    # Is there a dry way for this?
    @_basename ?= path.basename(@_filename, path.extname(@_filename))

  ContentTree::findImage = (filename) ->
    _.find @._.images, (img) ->
      name = img._filename
      img if path.basename(name, path.extname(name)) is filename

  callback()
