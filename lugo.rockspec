package = "lugo"
version = "0.0.1"
source = {
   url = "git+https://github.com/atomicfruitcake/lugo"
}
description = {
   homepage = "https://github.com/atomicfruitcake/lugo",
   license = "*** MIT ***"
}
dependencies = {
   "lua <= 5.4",
   "http == 0.4.0"
}
build = {
   type = "builtin",
   modules = {
      ["app.srv.server"] = "app/srv/server.lua"
   }
}
