
local network = cc.import("#network")
local NetMsgConstants = network.NetMsgConstants
local NetMsg = network.NetMsg

local gbc = cc.import("#gbc")
local UserAction = cc.class("UserAction", gbc.ActionBase)
UserAction.ACCEPTED_REQUEST_TYPE = "websocket"


function UserAction:welcomeAction(args)
	cc.printerror("User welcome entity")
	cc.printerror(args)
	local msg = NetMsg.parser(args)

		cc.printerror(msg:getAction())
		cc.printerror(msg:getError())

	return msg:getData()

	-- World:playerEntry(playerInfo.id)
end

function UserAction:chatAction(args)

	local msg = NetMsg.parser(args)
	World:broadcastNetMsg("play.chat", msg)

end

-- function User:rebornAction(args)
-- 	local msg = NetMsg.parser(args)
-- 	local playerInfo = msg:getBody()
-- 	msg:setBody(nil)

-- 	if not playerInfo.id or 0 == playerInfo.id then
-- 		msg:setError(NetMsgConstants.ERROR_NICKNAME_NULL)
-- 		return msg:getData()
-- 	end

-- 	local player = World:getPlayerById(playerInfo.id)
-- 	local pos = World:getRebornPos()
-- 	player:setPos(pos)
-- 	player:resetHealth()
-- 	player:save()

-- 	World:sendMsg("user.reborn", player:getPlayerInfo())
-- 	World:playerEntry(playerInfo.id)

-- 	-- msg:setBody(player:getPlayerInfo())
-- 	-- return msg:getData()
-- end

-- function User:infoAction(args)
-- 	local msg = NetMsg.parser(args)
-- 	local body = msg:getBody()
-- 	local entity = World:getEntity(body.id)
-- 	if not entity then
-- 		return
-- 	end
-- 	if body.pos then
-- 		entity:setPos(body.pos)
-- 	end
-- 	if body.orientation then
-- 		entity:setOrientation(body.orientation)
-- 	end
-- 	entity:save()
-- end

-- function User:moveAction(args)
-- 	local msg = NetMsg.parser(args)
-- 	local body = msg:getBody()
-- 	local entity = World:getEntity(body.id)
-- 	entity:setPos(body.to)
-- 	entity:save()

-- 	World:broadcast("user.move", body)
-- end

-- function User:attackAction(args)
-- 	local msg = NetMsg.parser(args)
-- 	local body = msg:getBody()

-- 	local sender = World:getEntity(body.sender)
-- 	local target = World:getEntity(body.target)
-- 	if target:isDead() then
-- 		return
-- 	end

-- 	local reduceBoold = -(10 + math.random(1, 10))
-- 	local afterboold = target:healthChange(reduceBoold)
-- 	body.healthChange = reduceBoold
-- 	body.dead = (afterboold <= 0)

-- 	World:broadcast("user.attack", body)

-- 	if body.dead then
-- 		if target:isMob() then
-- 			World:broadcast("mob.dead", {id = body.target})
-- 			target:setAttack(0)
-- 			-- target:reborn()
-- 			World:schedule("schedule.reborn", {id = body.target}, 10)
-- 		else
-- 			sender:setAttack(0)
-- 			World:broadcast("user.dead", {id = body.target})
-- 		end
-- 	else
-- 		if target:isMob() then
-- 			local attackId = target:getAttack()
-- 			printInfo("User:attack id %d", attackId)
-- 			if 0 == attackId then
-- 				target:setAttack(body.sender)
-- 				World:sendMsg("mob.attack", {sender = body.target, target = body.sender})
-- 			end
-- 		end
-- 	end
-- end

-- function User:cancelattackAction(args)
-- 	local msg = NetMsg.parser(args)
-- 	local body = msg:getBody()

-- 	local sender = World:getEntity(body.sender)
-- 	local target = World:getEntity(body.target)
-- 	if target:isMob() then
-- 		target:setAttack(0)
-- 	end
-- end

return UserAction
