
cc.import("cocos.init")
-- local models = cc.import("#models")
-- local WorldCls = models.World
local Session = cc.import("#session")
local gbc = cc.import("#gbc")
local WebSocketInstance = cc.class("WebSocketInstance", gbc.WebSocketInstanceBase)

function WebSocketInstance:ctor(config)
   WebSocketInstance.super.ctor(self, config)
   self:addEventListener(WebSocketInstance.EVENT.CONNECTED, cc.handler(self, self.onConnected))
   self:addEventListener(WebSocketInstance.EVENT.DISCONNECTED, cc.handler(self, self.onDisconnected)) 
end

function WebSocketInstance:onConnected()
    local redis = self:getRedis()

    -- load session
    local sid = self:getConnectToken() -- token is session id
    local session = Session:new(redis)
    session:start(sid)
cc.printerror(sid)
    -- add user to online users list
    -- local online = Online:new(self)
    -- local username = session:get("username")
    -- online:add(username, self:getConnectId())

    -- -- send all usernames to current client
    -- local users = online:getAll()
    -- online:sendMessage(username, {name = "LIST_ALL_USERS", users = users})
    -- -- subscribe online users event
    -- self:subscribe(online:getChannel())

    -- self._username = username
    self._session = session
    -- self._online = online
end

function WebSocketInstance:onDisconnected(event)
    -- World:playerQuit()
    -- World:unsubscribeChannel()
end

function WebSocketInstance:heartbeat()
    -- refresh session
    self._session:setKeepAlive()
end

function WebSocketInstance:getUsername()
   -- return self._username
end

function WebSocketInstance:getSession()
    return self._session
end

function WebSocketInstance:getOnline()
   -- return self._online
end
return WebSocketInstance
