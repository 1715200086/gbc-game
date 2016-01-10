--
-- Author: Your Name
-- Date: 2015-12-24 10:10:23
--
local TableSkill = {}



TableSkill =
{
--普通攻击	
["1"] =
	{
		skillid = 1,
		probability = 100,
		--当英雄一个技能都没有触发时 随机攻击前排一名英雄

	}


--专属主动	
["1000"] =
	{
		skillid = 1000,
		probability = 20,
		--对敌方全体造成 法术攻击*120% 的 法术伤害
	}
["1001"] =
	{
		skillid = 1001,
		probability = 20,
		--恢复血量最少的英雄 念*120% 的 血量     	     
	}


["1000"] =
	{
		skillid = 1000,
		probability = 20,
		--对敌方全体造成 每回合法术攻击*120% 的 法术伤害 持续3回合
	}
["1001"] =
	{
		skillid = 1001,
		probability = 20,
		--降低受到的法术伤害 持续3回合 持续期间该技能无法再次触发	     
	}


--技能可以后面在写 等把状态机搞清楚了 回头来写 先空结构体

--专属被动
["2000"] ={}


--通用主动	
["3000"] ={}


--通用被动
["4000"] ={}


}


end


return TableSkill