
local ServerData = class("ServerData")

--通过userId 获取userData
local userData = 
{
userId,
vipLevel,
topGold,
itemBox = {},
character = {},
}

local itemBoxData =
{
{itemId,count},--所有道具都有一个唯一id 包括hero
{itemId,count},
{itemId,count}
}

local characterData = 
{
characterId,
nickname,
level,
jobId,
skinId,





}


local heroData = 
{
itemId,  --所有英雄都有一个唯一id
heroId, --模板id

skills = {},  --技能非固定 可以领悟 可以消除
potential = {minjie,lingli,liliang,zhinian,tizhi} --不同潜力丹增加不同属性 总量限制
empirical,--通过战斗 和 经验书获得
equips = {{equipId,level},}  --后面加
unionAddition = {minjieLevel,lingliLevel,liliangLevel,zhinianLevel,tizhiLevel}
athleticsRank,
--升星需要升星丹（星级越高卡牌品质越好升星成功率越低） 升星后会逐步开启技能格 
--不要求同名卡 这个坑没必要 会限制玩家领悟技能 就失去乐趣了 升星后效果同三王 显示xx星就行了
starLevel,


magicWeapon = {stones={},level,}
}




function ServerData:initData(args)




end