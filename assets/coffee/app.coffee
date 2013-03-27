'use strict'

###
Module dependencies.
###

express = require 'express'
routes = require './routes'
config = require 'config'
path = require 'path'

app = express()

app.configure ->
  app.set 'port', process.env.PORT or 3000
  app.set 'views', __dirname + '/views'
  app.set 'view engine', 'jade'
  app.use express.favicon()
  app.use express.logger 'dev'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use app.router
  app.use express.static path.join(__dirname, 'public')

app.configure 'development', ->
  app.use express.errorHandler()

routes.init config

app.get '/', routes.index

app.listen process.env.PORT || 3000,  ->
  console.log 'Express server listening on port ' + app.get('port')
