'use strict'

###
Module dependencies.
###

module.exports = (config) ->
  Sequelize = require 'sequelize'
  params = config.sequelize || {}

  params.options = params.options || {}

  console.log 'Sequelize connecting to %s on %s as %s', params.database, params.options.host || 'localhost', params.username
  new Sequelize params.database, params.username, params.password, params.options