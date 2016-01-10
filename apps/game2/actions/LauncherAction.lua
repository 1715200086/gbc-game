

local Session = cc.import("#session")

local gbc = cc.import("#gbc")
local Launcher = cc.class("Launcher", gbc.ActionBase)

--
function Launcher:getsessionidAction(args)
      -- start session
    local session = Session:new(self:getInstance():getRedis())
    session:start()
    session:save()

    -- return result
    return {sid = session:getSid()}

end

return Launcher
