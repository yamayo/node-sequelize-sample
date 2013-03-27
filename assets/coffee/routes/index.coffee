'use strict'

#
# * GET home page.
# 

exports.init = (config) ->
  sequelize = require('db')(config)
  @blog = require('../models/blog')(sequelize)

exports.index = (req, res) =>
  console.log 'blog', @blog
  res.send 'respond with a resource'

exports.list = (req, res) =>

