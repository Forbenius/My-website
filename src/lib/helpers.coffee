_  = require 'wintersmith/node_modules/underscore'

# Expose here some api
exports.sortArticles = (collection, options = {}) ->
  _.chain(collection.articles._.directories)
    .map((item) ->  item.index)
    .compact()
    .sortBy((item) -> -item[options.by or 'date'])
    .first(options.limit or 5)
    .value()
