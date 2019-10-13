check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "星球物语",
    mapCount = 1,
    planeId = nil,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {600,1700,83900,83906,83901,83907,83902},
    overtime = 150, --超时时间，/分钟
    endMapIds = {83902}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_hit_range_max=100,
		tobot_hit_range_min=10,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "",
       -- 副本1
       "C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",
       -- 副本2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",
       -- 副本3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- 副本4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- 副本5
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313435352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313435352CD7F3C5DC2C",
       -- 副本6
       "",
       -- 副本7
       "",
       -- 副本8
       "",
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
	labels=0,
	labelm=0,
	 onScriptRound = function (config) -- 副本每次切换地图回调
		if getmapid()==600 then
			open_npc(110088)
			npc_plane(110088,212,4,5,0)
			close_npc(110088)
		end
		if getmapid()==1700 then
			speak("小星球一键lua，挂机技能请添加弱攻击，并装备<照顾雨伞>！！！")
			bot_stop()
			gotocoordinate(1, 8265, 1407)
			sleep(1000)
			item_wear("照顾雨伞")
			sleep(700)
			item_wear("照顾雨伞")
			sleep(700)
			item_wear("照顾雨伞")
			open_npc(508)
			request_task(508,9520101)
			submit_task(508,9520101)
			close_npc(508)
			bot_start()
			repeat
				sleep(200)
					if gettime(2)<18 then
						speak("小星球未到时间，当前时间"..gettime(2).."点"..gettime(3).."分，请等待。")
						bot_stop()
					end
					if gettime(2)>=20 then
						speak("小星球时间已过，当前时间"..gettime(2).."点"..gettime(3).."分，副本自动终结。")
						sleep(10000)
						plane(70)
						return true
					end
			until(gettime(2)==18 or gettime(2)==19)
			if gettime(2)==18 or gettime(2)==19 then
				ini_change("tobot_scriptbot",1)
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383234352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383236352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383238352C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C373330302C313430372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C383530302C313430372CD7F3C5DC2C",0)
				bot_start()
				config.labels=gettime(2)    --记录进入时间
				config.labelm=gettime(3)    --记录进入时间
			end
			if 	gettime(2)==20 then
					plane(70)
					return true
			end
		end
		if getmapid() == 83900 then
			bot_stop()
			ini_change("tobot_scriptbot",0)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)<=15 then --"坏的"刷15分钟
					ini_change("tobot_hit_range_right",1500)
					ini_change("tobot_hit_range_left",1600)
					ini_change("tobot_nomovebot",0)
					bot_start()
					item_use(430453101)--用土
					sleep(500)
				end
				if gettime(2)==18 and gettime(3)<=30 and gettime(3)>15 then --"好的"刷15分钟
					ini_change("tobot_hit_range_right",2500)
					ini_change("tobot_hit_range_left",2600)
					ini_change("tobot_nomovebot",0)
					bot_start()
					item_use(430453102)--用水
					sleep(500)
				end
			until(gettime(2) == 18 and gettime(3)>30 or gettime(2)==19)
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",1)
			ini_change("tobot_hit_range_right",32)
			ini_change("tobot_hit_range_left",3167)
			script_txt_loaddata("C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83906 then   --水土	"土"刷7分钟
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			speak("获取土")
			repeat
				sleep(200)
<<<<<<< HEAD
				if gettime(2)==18 and gettime(3)<=40 then
=======
				if gettime(2)==18 and gettime(3)>30 and gettime(3)<=37 then
>>>>>>> b4777bcd408fc5f0d9e5740bdeab7fcf6c2b55ad
					local mobId = mob_obj_get('土之魂')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(500)
						useskill(9531001,1) --消灭怪物
						bot_start()
					end	
				end
			until(gettime(2)==18 and gettime(3)>40 or gettime(2)==19)
			ini_change("tobot_hit_range_left",3167)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",0)
		end
		if getmapid() == 83901 then  
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",0)
		end
		if getmapid() == 83907 then   --水土   "水"刷7分钟
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			speak("获取水")
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)>37 and gettime(3)<=44 then
					local mobId = mob_obj_get('水之魂')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(500)
						useskill(9531001,1) --消灭怪物
						bot_start()
					end	
				end
			until(gettime(2)==18 and gettime(3)>44 or gettime(2)==19 )
			ini_change("tobot_hit_range_left",3167)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",0)
		end
		if getmapid() == 83902 then	
			label=0
			ini_change("tobot_nomovebot",0)
			sleep(4000)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)<=59 then --喜--"喜"刷16分钟
					ini_change("tobot_hit_range_right",2600)
					ini_change("tobot_hit_range_left",3167)
					local mobId = mob_obj_get('成年的玫瑰')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531003,1) --喜
						bot_start()
						sleep(500)
					end	
				end
				if gettime(2)==19 and gettime(3)>=0 and gettime(3)<=15 then --悲--"悲"刷16分钟
					ini_change("tobot_hit_range_right",2600)
					ini_change("tobot_hit_range_left",3167)
					local mobId = mob_obj_get('成年的玫瑰')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531004,1) --悲
						bot_start()
						sleep(500)
					end	
				end
				if gettime(2)==19 and gettime(3)<=59 and gettime(3)>15then--成长"成长"刷45分钟
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					local mobId = mob_obj_get('玫瑰')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531002,1) --洒水
						bot_start()
						sleep(500)
					end	
				end
				if 	gettime(2)==20 then
					label=1
					plane(70)
				end
			until(label==1)
		end
    end
})