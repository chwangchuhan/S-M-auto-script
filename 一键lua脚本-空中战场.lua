check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")
 
common.simpleStart({
    mapName = "空中战场",
    mapCount = 1,
    planeId = 123,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {63400,93600},

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
	isLuckyDog = true,
    scripts = {
        "",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3332312C313236332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3330362C313236332CB2BBB1E42C",
        "",
        "",
        "",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {},
	 onScriptRound = function (config) -- 副本每次切换地图回调
		if(getmapid()==63400)then
			bot_stop()
			sleep(100)
			open_npc(700074)
			sleep(10)
			request_task(700074,5180057)
			sleep(10)
			submit_task(700074,5180057)
			sleep(10)
			close_npc(700074)
			sleep(10)
			if isbuff("空中战场的试练") == 1 then
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353538362E35372C313439352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313439352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C353934332E35342C313439352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C343339342E36342C313339322E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353934332C313239352E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--启动挂机--
			else
				speak("空中战场1小时已经刷完。")
				plane(70)
			end
		end
		if getmapid() == 93600 then
			repeat
				sleep(200)
				local mobId = mob_obj_get('英雄王 泰西欧斯')
				if mobId~=0 then
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
												
											end
										end
									end
								end
							end
						end
					end
				end
			until(door_if(320,1263)==1)
		end
    end
})
 