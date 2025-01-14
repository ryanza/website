util = require 'util'
mongoose = require 'mongoose'
require('mongoose-types').loadTypes mongoose

require "./#{lib}" for lib in ['invite', 'person', 'deploy', 'vote', 'team']

module.exports = (url) ->
  util.log 'connecting to ' + url.cyan
  mongoose.connect url, (err) -> throw Error err if err
