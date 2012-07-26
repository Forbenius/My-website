$ = require('jquery-browserify')
$.ajax
  url: '/contents.json'
  success: (contents) ->
    console.log contents.articles
