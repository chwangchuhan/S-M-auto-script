check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "神庙探索者：腐化核心",
    mapCount = 5,
    planeId = 19868,
	minYSpeed = 200,
    maxYSpeed = 2000,
	minXSpeed = 200,
    maxXSpeed = 2000,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {90300,90100,90101,90102,90103,90104,90105,90106,90107,90108,90109,90110,90111,90112,90113,90114,90115},
    overtime = 30, --超时时间，/分钟
    endMapIds = {90115}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置t
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_giveitemif=1,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
		tobot_hit_range_top = 120,
    },

    isLuckyDog = true,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C313435362CB2BBB1E42C",
       -- 副本1  竹子图
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3937362CB2BBB1E42C",
       -- 副本2			
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- 副本3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- 副本4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- 副本5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- 副本6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- 副本7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- 副本8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
	   -- 副本9  111
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
	   -- 副本10 
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- 副本11
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- 副本12
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- 副本13
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- 副本14 最中间
	   "C9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- 副本15
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C",
	   -- 副本16
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C",
	   -- 副本17
	   "",
    },
    
    onScriptRound = function () -- 副本每次切换地图回调
		if (getmapid() == 90100) then
			ini_change("find_is_zhiding",0)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			item_use(170191135)--世界树减伤药
			sleep(100)
			if isbuff('铭·属性力药水')==0 then
				item_use(430139031)--属性力药水
				sleep(100)
			end
			if isbuff('效果')==0 then
				item_use(430139017)--武器最大伤害药水
				sleep(100)
			end
		end
        if (getmapid() == 90113) then
			labelnext=0
			labeldoor=0
			labelnum=0
			if isbuff('铭·属性力药水')==0 then
				item_use(430139031)--属性力药水
				sleep(100)
			end
			if isbuff('效果')==0 then
				item_use(430139017)--武器最大伤害药水
				sleep(100)
			end
			repeat
				sleep(100)
				local mobId = mob_obj_get('沃瑞克斯矿石')
				local mobX = mob_obj_x(mobId)
				local mobY = mob_obj_y(mobId)
				if mobY>880 then
					mobY=912
				end
				speak(mobX.."."..mobY)
				if door_if(3100,912)==1 and labeldoor==0 then
					speak("开启挖矿模式")
					labeldoor=1
				end
				if gety()==mobY and labeldoor==1then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					sleep(1000)
					if gety()==mobY and labeldoor==1 then  
						speak("开始挖矿")
						common.wearDiaoluo()
						bot_stop()
						sleep(500)
						gotocoordinate(1,mobX,mobY)
						sleep(1000)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						common.wearGongji()
						labelnum=labelnum+1
					end
					bot_start()
					ini_change("tobot_scriptbot",1)
				end
				if labelnum ==3 and labeldoor==1 then   --必须挖满3个矿
					speak("没有矿了，开启进门")
					common.wearGongji()
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133302C3931322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C3931322CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C",0)
					labelnext=1
				end
			until(labelnext==1 or getmapid() ~= 90113)
        end
		if (getmapid() == 90115) then
			labeldoor=0
			repeat
				sleep(100)
				if door_if(3100,912)==1 then
					labeldoor=1
				end
				local mobId = mob_obj_get('巨型触手')
				if mobId~=0 then
					ini_change("find_zhiding","巨型触手")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				else
					ini_change("find_zhiding","深渊异兽克西姆")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				end
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
										item_use(611113089)  --最大攻击免疫
										sleep(100)
										if isbuff('免疫效果')==0 then --免疫
											item_use(611113088)  --最大属性免疫
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
													item_use(611113016)
													sleep(100)
												end
												if isbuff('吸收效果')==0 then
													item_use(611113086)--最大吸红
													sleep(100)
												end
												if isbuff('古代之力')==0 then
													item_use(430453126)--星球坚不可摧
													sleep(100)
												end
											end
										end
									end
								end
							end
						end
					end
					if isbuff('铭·属性力药水')==0 then
						item_use(430139031)--属性力药水
						sleep(100)
					end
					if isbuff('效果')==0 then
						item_use(430139017)--武器最大伤害药水
						sleep(100)
					end
			until(labeldoor==1)
        end
    end
})