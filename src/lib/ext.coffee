_      = require 'underscore'
moment = require 'moment'

module.exports = (wintersmith, callback) ->

  ##
  # Require some wintersmith internals
  #
  {ContentTree} = wintersmith
  {Page} = wintersmith.defaultPlugins

  ##
  # Make a decent helper to get sorted list of directory indexes
  #
  ContentTree::get = (collection, options={}) ->
    options.limit  ?= 5
    options.sortBy ?= 'date'
    _.chain(@[collection]._.directories)
      .map( (item) -> item.index )
      .compact()
      .sortBy( (item) -> -item[options.sortBy] )
      .first(options.limit)
      .value()

  ##
  # Extend Page with moment dates
  #
  Page.property 'momentDate', ->
    moment @date

  ##
  # Back to the hell
  callback()
