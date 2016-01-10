--
-- Author: Your Name
-- Date: 2015-12-24 09:50:13
--
local TableHero = {}

--是这样好还是 分开 做成model好  等回头再看看 
TableHero =
{
["10001"] = 
	{
	heroId = 10001,
	name = "风清扬",
	describe = "describe",
	heroType = 1, --海贼系列 金庸系列 三国系列  lol系列 高手寂寞系列
	isAllowToBeChief = true,
	attackPrefer = 2, --1 主将 2 随从
	quality = 4, -- 1普通 2珍贵 3史诗 4 传说
	cost = 3, 
	initiative = 40, --出战意愿 概率
	skills = {}
	attribute = 
		{	
			minjie = 	{base = 10,grow = 3,}, --grow 升级增加的属性点 
			lingli = 	{base = 10,grow = 3}, 
			liliang = 	{base = 10,grow = 3},
			zhinian = 	{base = 10,grow = 3},
			tizhi = 	{base = 10,grow = 3},
			potential = 2 --potential 升级增加的潜力点 潜力点通过属性丹激活
		}
	}

["10002"] = 
	{
	heroId = 10001,
	name = "风清扬",
	describe = "describe",
	heroType = 1, --海贼系列 金庸系列 三国系列  lol系列 高手寂寞系列
	isAllowToBeChief = true,
	attackPrefer = 2, --1 主将 2 随从
	quality = 4, -- 1普通 2珍贵 3史诗 4 传说
	cost = 3, 
	initiative = 40, --出战意愿 概率
	skills = {}
	attribute = 
		{	
			minjie = 	{base = 10,grow = 3,}, --grow 升级增加的属性点 
			lingli = 	{base = 10,grow = 3}, 
			liliang = 	{base = 10,grow = 3},
			zhinian = 	{base = 10,grow = 3},
			tizhi = 	{base = 10,grow = 3},
			potential = 2 --potential 升级增加的潜力点 潜力点通过属性丹激活
		}
	}

["10003"] = 
	{
	heroId = 10001,
	name = "风清扬",
	describe = "describe",
	heroType = 1, --海贼系列 金庸系列 三国系列  lol系列 高手寂寞系列
	isAllowToBeChief = true,
	attackPrefer = 2, --1 主将 2 随从
	quality = 4, -- 1普通 2珍贵 3史诗 4 传说
	cost = 3, 
	initiative = 40, --出战意愿 概率
	skills = {}
	attribute = 
		{	
			minjie = 	{base = 10,grow = 3,}, --grow 升级增加的属性点 
			lingli = 	{base = 10,grow = 3}, 
			liliang = 	{base = 10,grow = 3},
			zhinian = 	{base = 10,grow = 3},
			tizhi = 	{base = 10,grow = 3},
			potential = 2 --potential 升级增加的潜力点 潜力点通过属性丹激活
		}
	}
}






return TableHero