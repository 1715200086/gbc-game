
-- local HttpConnectBase = require("server.base.HttpConnectBase")
-- local HttpConnect = class("HttpConnect", HttpConnectBase)


local gbc = cc.import("#gbc")
local HttpInstance = cc.class("HttpInstance", gbc.HttpInstanceBase)


function HttpInstance:ctor( ... )
	HttpInstance.super.ctor(self, ...)
end

return HttpInstance
