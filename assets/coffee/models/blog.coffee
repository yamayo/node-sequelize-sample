'use strict'


module.exports = (sequelize) ->
  
  Sequelize = require 'Sequelize'

  sequelize.define 'Blog'
    title: Sequelize.STRING
    content: Sequelize.STRING
  ,
    underscored: true
    
  # Blog = sequelize.import(__dirname + "/blog")

  # console.log 'Blog', Blog