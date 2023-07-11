local server = require 'http.server'
local headers = require 'http.headers'

local srv = server.listen {
  host = 'localhost',
  port = 80,
  onstream = function (sv, out)
    local hdrs = out:get_headers()
    local method = hdrs:get(':method')
    local path = hdrs:get(':path') or '/'

    local rh = headers.new()
    rh:append(':status','200')
    rh:append('content-type','text/plain')

    out:write_headers(rh, false)
    out:write_chunk(("Received '%s' request on '%s' at %s\n"):format(method, path, os.date()), true)
  end
}

srv:listen()
srv:loop()
