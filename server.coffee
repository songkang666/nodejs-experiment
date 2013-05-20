http = require 'http'
querystring = require 'querystring'

class Server
  constructor:  ->
    @server = http.createServer (request, response) =>
      @route request, response

  run: ->
    @server.listen 8888, '127.0.0.1'
    console.log 'Success server is running on 127.0.0.1:8888'
      

  route: (request,response) ->
    str = request.toString() ##querystring.parse request
    response.writeHead 200,'Content-Type':'text/plain'
    total = '' + str
    #/for each in str
    #/  total = each + ' '
    response.end total + '!\n OK! to be continue......'

myserver = new Server
myserver.run()
