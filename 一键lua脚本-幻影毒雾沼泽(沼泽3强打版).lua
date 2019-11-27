check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "幻影毒雾沼泽",
    mapCount = 5,
    planeId = 290,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {38004,37700,37701,37702,37703,37704,37705,37706,37707,37708,37709,37710,37711,37712,37713},
    overtime = 400, --超时时间，/分钟
    endMapIds = {37713}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_giveitemif=0, 
		tobot_hit_range_top = 150,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
    isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 0 
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",
       -- 1
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C363336372C313636332CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C353930302C3836332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333538302C3836332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333630302C3836332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333632302C3836332CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323130302E31342C3836332E3535392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C343638302C3836332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363036302C313636332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363130302C313636332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363234332C3838372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363235382C3838332CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363235382C3838332CB2BBB1E42C",
       -- 2
       "CFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3433322E34382C3437392E3938372CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3635362E31382C313038372E35332CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313035302C313636332CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C343131322C313636332CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323239392E32342C313139392E36322CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C343438352E35382C3339392E36342CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363237352E36382C3534332E30342CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C353238302E30362C3534332E34382CD3D2C5DC2C",
       -- 3
       "D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333130342E31342C313838372E38342CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323037392E37322C313838372E382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532382E34362C3635352E36342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343532352E31352C3935392E39362CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343930372E33382C3532372E30382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237352E362C3232332E39322CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C363335302C313838372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323931302C313739312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323231322C313832312CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3230302C3335312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3335312CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3430302C313838372CD7F3C5DC2C",
       -- 4
       "D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C",
       -- 0
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",
       -- 0
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",
       -- 之路
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343536332E32312C313735392E35362CD7F3C5DC2C",
	   -- 贝斯
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363134332E34372C313435352E30382CD7F3C5DC2C",
	   -- 坑道
	   "D3D2CCF82CD7F326D3D2CAB12C313739352E362C313035362E31322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738362E34362C3838302E36342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739302C3838302E2CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C3838302CD7F3C5DC2C",
	   -- 世界
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313031312C3431352CD7F3C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323539312C3833312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323239352C3537352CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333535312C313234372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343338332C3833312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C35302C313633312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C36382C313633312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C313633312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C313633312CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3530302C3431352CB2BBB1E42C",
	   -- 混沌之路
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343631312E36322C313735392E382CD7F3C5DC2C",
	   -- boss
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312E342C313735392E362CD7F3C5DC2C",
	   -- 副本14
	   "",
	   -- 副本15
	   "",
	   -- 副本16
	   "",
	   -- 副本17
	   "",
	},
    onScriptRound = function () -- 副本每次切换地图回调
		if (getmapid() == 37700) then --沼泽0	
			ini_change("find_is_zhiding",0)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			wearitem("紫金星朵")
			sleep(10)
		end
		if (getmapid() == 37701) then --沼泽1
			if isbuff('铭·属性力药水')==0 then
				item_use(430139031)--属性力药水
				sleep(100)
			end
			if isbuff('效果')==0 then
				item_use(430139017)--武器最大伤害药水
				sleep(100)
			end
		end
		if (getmapid() == 37702) then --沼泽2
			if isbuff('铭·属性力药水')==0 then
				item_use(430139031)--属性力药水
				sleep(100)
			end
			if isbuff('效果')==0 then
				item_use(430139017)--武器最大伤害药水
				sleep(100)
			end
		end
		if (getmapid() == 37703) then --沼泽3
			labeldoor=0
			repeat
				sleep(200)
				if isbuff('铭·属性力药水')==0 then
					item_use(430139031)--属性力药水
					sleep(100)
				end
				if isbuff('效果')==0 then
					item_use(430139017)--武器最大伤害药水
					sleep(100)
				end
				local mobId4 = mob_obj_get('??? ?')
				local mobx4 = mob_obj_x(mobId4)
				if gety()==1695 and mobx4~=0 then --采集
					bot_stop()
					speak("采集魔心")
					useskill(43501018,1)
					gotocoordinate(1,mobx4,1695)
					sleep(200)
					useskill(5000028,1)
					ini_change("tobot_scriptbot",1)
					script_txt_loaddata("D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333130342E31342C313838372E38342CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323037392E37322C313838372E382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532382E34362C3635352E36342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343532352E31352C3935392E39362CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343930372E33382C3532372E30382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237352E362C3232332E39322CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C363335302C313838372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323931302C313739312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323231322C313832312CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3230302C3335312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3335312CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3430302C313838372CD7F3C5DC2C",0)
					bot_start()
				end
				if door_if(6275,223)==1 then
					labeldoor=1
				end
			until(labeldoor==1 and gety()==223 and mobx4==0)
        end
		if (getmapid() == 37704) then --沼泽4
			labelnext=0
			common.wearGongji()
			wearitem("紫金星朵")
			sleep(10)
			labellasttime=gettime(3)
			labelnowtime=0
			repeat
				sleep(10)
				if isbuff('铭·属性力药水')==0 then
					item_use(430139031)--属性力药水
					sleep(10)
				end
				if isbuff('效果')==0 then
					item_use(430139017)--武器最大伤害药水
					sleep(10)
				end
				local mobId4 = mob_obj_get('??? ?')
				local mobx4 = mob_obj_x(mobId4)
				labelnowtime=gettime(3)
				if door_if(6150,895)==1 then
					if mobId4==0 then
					speak("开启进门")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					script_txt_loaddata("D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363133302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363135302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363137302C3839352CB2BBB1E42C",0)
					bot_start()
					end
					if labelnowtime - labellasttime ==10 or labelnowtime - labellasttime ==-50 then
						speak("超时10分钟，开启进门")
						labelnext=1
						script_txt_loaddata("D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363133302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363135302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363137302C3839352CB2BBB1E42C",0)
					end
				end
				if getx()>3300 and getx()<=3800 and gety()> 863 and gety()<1000then
					bot_stop()
					sleep(200)
					jmp(1)
					sleep(1000)
					local mobId4 = mob_obj_get('??? ?')
						if mobId4 ~=0  then
							useskill(43501018,1)
							sleep(1000)
							useskill(5000028,1)
							sleep(1000)
							useskill(5000028,1)
							sleep(1000)
						end
					bot_start()
				end
				if getx()>4200 and getx()<=5000 and gety()> 895 then
					bot_stop()
					sleep(200)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					bot_start()
				end
				local mobId4 = mob_obj_get('??? ?')
				if getx()>4200 and getx()<=5000 and gety()==895 and mobId4 ~=0 then
					bot_stop()
					useskill(5000420,1)
					sleep(1000)
					useskill(5000028,1)
					sleep(1000)
					useskill(5000028,1)
					sleep(1000)
					bot_start()
					sleep(1000)
				end
				if getx()>6000 and gety()> 895 then
					bot_stop()
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(1000)
					bot_start()
				end
				if getmapid() == 37704 and door_if(6150,895)== 0 then
					script_txt_loaddata("D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C",0)
				end
				if (getmapid() == 37705) then
					ini_change("ban_hit_mob",0)
					repeat
						sleep(100)
						ini_change("ban_hit_mob",0)
						if door_if(1021,1759)==0 then
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
						end
					until(door_if(1021,1759)==1)
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",0)
				end
				if (getmapid() == 37706) then
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",0)
				end
			until(getmapid() == 37706 or getmapid() ~= 37704 or labelnext==1)
		end
		if (getmapid() == 37705) then
			ini_change("ban_hit_mob",0)
			repeat
				sleep(100)
				ini_change("ban_hit_mob",0)
				if door_if(1021,1759)==0 then
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
				end
			until(door_if(1021,1759)==1)
        end
		if (getmapid() == 37707) then --小黑屋
			ini_change("ban_hit_mob",0)
			item_use(170191135)--世界树减伤药
			sleep(100)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
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
				if	door_if(4563,1759)==1 then
					speak("门开了")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(2)
					sleep(900)
					jmp(2)
					sleep(900)
					bot_start()
				end
			until( door_if(4563,1759)==1)
        end
		if (getmapid() == 37708) then --贝斯
			ini_change("ban_hit_mob",0)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
				if	door_if(6143,1455)==1 then
					speak("门开了")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(2)
					bot_start()
				end
			until( door_if(6143,1455)==1)
		end
		if (getmapid() == 37709) then 
			ini_change("ban_hit_mob",0)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
				local mobId = mob_obj_get('爱丽丝的噩梦')
				if mobId~=0 then
					ini_change("find_zhiding","爱丽丝的噩梦")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				else
					ini_change("find_is_zhiding",0)
					ini_change("find_is_youhao",1)
					ini_change("find_is_ewai",1)
				end
				if	door_if(1790,880)==1 then
					speak("门开了")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(2)
					bot_start()
				end
			until( door_if(1790,880)==1)
        end
		if getmapid() == 37710 then 
			ini_change("ban_hit_mob",0)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
				if	door_if(68,1631)==1 then
					speak("门开了")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(0)
					bot_start()
				end
			until( door_if(68,1631)==1)
		end
		if getmapid() == 37711 then 
			ini_change("ban_hit_mob",0)
		end
		if (getmapid() == 37712) then
			ini_change("ban_hit_mob",0)
			wearitem("金牛座的黄金守护+4")
			wearitem("摩羯座的黄金守护+4")
			wearitem("处女座的黄金守护+4")
			wearitem("紫金星朵")
			wearitem("黄金星朵")
			sleep(10)
			item_use(170191135)--世界树减伤药
			sleep(100)
			repeat
				sleep(200)
				local mobId = mob_obj_get('魔王幻影')
				if mobId~=0 then
					ini_change("find_zhiding","魔王幻影")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
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
				else
					ini_change("find_is_zhiding",0)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				end
				if	door_if(1020,1759)==1 then
					speak("门开了")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(1)
					bot_start()
				end
			until(door_if(1020,1759)==1)
        end
		if (getmapid() == 37713) then
			ini_change("find_zhiding","宝箱")
			ini_change("find_is_zhiding",1)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			ini_change("ban_hit_mob",0)
			speak("开启宝箱,60s后退出副本")
			sleep(60000)
			ini_change("find_is_zhiding",0)
			plane(290)
        end
    end
})