check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "矮人飞艇(超越)",
    mapCount = 3,
    planeId = 272,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {35303.0,35100,35101,35102,35103,35104,35105,35106,35107,35108,35109},
    overtime = 60, --超时时间，/分钟
    endMapIds = {35108,35109}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_giveitemif=1,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
	isLuckyDog = true,
    scripts = {
       -- 副本进门
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323636302C3436332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930302C3436332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323931302C3436332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932302C3436332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323933302C3436332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934332C3436332CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C323131322C3630372CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313633322C313430372CB2BBB1E42C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C313430372CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323036352C3934332CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323639382C3934332CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C33322C313430372CD3D2C5DC2CCAB9D3C3B7C9BBFA2C3237320D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C2CCAB9D3C3B7C9BBFA2C323732",
       -- 啤酒1
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3538382C313430372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323232342C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131322C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132322C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133322C313430372CB2BBB1E42C",
       -- 食物2
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323830312C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3635352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333032372C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333033372C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333034372C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333035372C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036372C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134302C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135302C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3136302C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3137302C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138302C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3139302C313332372CB2BBB1E42C",
       -- 甲板3
       "",
       -- 后尾4
       "D3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3730352C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035312C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036312C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037312C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038312C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039312C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323931382C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323933382C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935382C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930302C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323931352C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934352C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323936302C313332372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3630372C313430372CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3137362C313430372CB2BBB1E42C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3237322C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3635352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313332382C3635352CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313732352C313430372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333038382C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035382C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036382C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037382C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038382C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039382C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130382C313430372CD3D2C5DC2C0D0A",
       -- 第一记录室5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313534322C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313533322C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313532322C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313531322C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530352C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323931382C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323933382C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935382C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930302C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323931352C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934352C313332372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323936302C313332372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3630372C313430372CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3137362C313430372CB2BBB1E42C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3237322C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3635352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313332382C3635352CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313732352C313430372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333038382C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035382C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036382C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037382C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038382C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039382C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130382C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3537352C3834372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3539352C3834372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3630352C3834372CB2BBB1E42C0D0A",
       -- 6
       "",
       -- 第二记录室7
       "",
       -- 8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3630302C3834372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3632302C3834372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634302C3834372CB2BBB1E42C",
	   -- 副本9
	   "",
	   -- 副本10
	   "",
	   -- 副本11
	   "",
	   -- 副本12
	   "",
	   -- 副本13
	   "",
	   -- 副本14
	   "",
	   -- 副本15
	   "",
	   -- 副本16
	   "",
	   -- 副本17
	   "",
	},
	label=0,
    onScriptRound = function (config) -- 副本每次切换地图回调
        if (getmapid() == 35100) then
		config.label=0
        end
		if (getmapid() == 35102) then
			useskill(5000420,1) --放一个魔免
		end
			
		if (getmapid() == 35103) then
			useskill(43501022,1) --放第二个魔免
		end
		if (getmapid() == 35104) then
			config.label=1
			repeat
				sleep(100)
				if door_if(1550,1023)~=1 then
					ini_change("find_zhiding","亚奇龙")
					ini_change("find_is_zhiding",1)
					ini_change("tobot_findmobif",0) 
					ini_change("ban_hit_mob",0)
					useskill(43501018,1)
				end
				if door_if(1550,1023)==1 then
					speak("速度出门")
				end
					if isbuff('玛烈赤斯之眼')==0 then --紫金
						useskill(43501018,1) --猴子
						sleep(10)
						if isbuff('一花一世界，一叶一菩提')==0 then  --无敌
							useskill(5000420,1)	--灵宠
							sleep(10)
							if isbuff('灵宠技能效果')==0 then --魔免
								useskill(43501022,1)  --朵朵
								sleep(10)
								if isbuff('每天都要美美哒')==0 then --魔免
									useskill(43501025,1) --红毛
									sleep(10)
									if isbuff('破坏王技能')==0 then
										--item_use(611113089)  --最大攻击免疫
										sleep(10)
										if isbuff('免疫效果')==0 then --免疫
											--item_use(611113088)  --最大属性免疫
											sleep(10)
											if isbuff('免疫效果')==0 then --免疫
												useskill(999005,1) --摄魂
												sleep(10)
												if isbuff('宠物效果')==0 then--混乱
													useskill(999006,1) --爱河
													sleep(10)
													if isbuff('宠物效果')==0 then--眩晕
														useskill(999003,1) --爱河
														sleep(10)
													end
												end
												if isbuff('食品效果')==0 then --三星芝士汤
													--item_use(611113016)
													sleep(10)
												end
												if isbuff('吸收效果')==0 then
													--item_use(611113086)--最大吸红
													sleep(10)
												end
												if isbuff('古代之力')==0 then
													--item_use(430453126)--星球坚不可摧
													sleep(10)
												end
											end
										end
									end
								end
							end
						end
					end
			until(door_if(1550,1023)==1)
		end
		if (getmapid() == 35106) then
			ini_change("find_is_zhiding",0)
			ini_change("ban_hit_mob",0)
			labelnext=0
			repeat
				sleep(100)
				if getx()>=1400 and config.label ==0 then
					speak("返程")
					labelnext=1
					ini_change("tobot_findmobif",1) 
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C39302C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C36302C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C37352C31303233372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130352C313032332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3131352C313032332CB2BBB1E42C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323939322C313430372CB2BBB1E42C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C333038382C313430372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313936382C3635352CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313534302C313430372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3237322C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3131372C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3133372C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135372C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313736302C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738302C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739302C3731392CB2BBB1E42C",1)
				end
				if config.label ==1 then
					labelnext=1
					script_txt_load("",1)
				end
			until(labelnext==1)
        end
		if (getmapid() == 35107) then
			repeat
				sleep(100)
				if isbuff('玛烈赤斯之眼')==0 then --紫金
						useskill(43501018,1) --猴子
						sleep(100)
						if isbuff('一花一世界，一叶一菩提')==0 then  --无敌
							useskill(5000420,1)	--灵宠
							sleep(100)
							if isbuff('灵宠技能效果')==0 then --魔免
								useskill(43501022,1)  --朵朵
								sleep(100)
								if isbuff('每天都要美美哒')==0 then --魔免
									useskill(43501025,1) --红毛
									sleep(100)
									if isbuff('破坏王技能')==0 then
										--item_use(611113089)  --最大攻击免疫
										sleep(100)
										if isbuff('免疫效果')==0 then --免疫
											--item_use(611113088)  --最大属性免疫
											sleep(100)
											if isbuff('免疫效果')==0 then --免疫
												useskill(999005,1) --摄魂
												sleep(100)
												if isbuff('宠物效果')==0 then--混乱
													useskill(999006,1) --爱河
													sleep(100)
													if isbuff('宠物效果')==0 then--眩晕
														useskill(999003,1) --爱河
														sleep(100)
													end
												end
												if isbuff('食品效果')==0 then --三星芝士汤
													--item_use(611113016)
													sleep(100)
												end
												if isbuff('吸收效果')==0 then
													--item_use(611113086)--最大吸红
													sleep(100)
												end
												if isbuff('古代之力')==0 then
													--item_use(430453126)--星球坚不可摧
													sleep(100)
												end
											end
										end
									end
								end
							end
						end
					end
			until(door_if(610,847)==1)
		end
		if getmapid() == 35108 or getmapid() == 35109 then
			sleep(3000)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3630302C3834372CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3632302C3834372CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634302C3834372CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",0)
		end
    end
})