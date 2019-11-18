check=1

mapIds = {600,1700,83900,83906,83901,83907,83902,83908,83903,83909}

bot_stop()

local function isInMap()
	for i=1,#mapIds do
			if getmapid() ==mapIds[i] then
				return true
			end
	end
	return false
end
if not isInMap() then
		speak("S&M 小星球一键lua提醒：当前不在目标地图中")
		sleep(1000)
		plane(95800)
end

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "星球物语",
    mapCount = 1,
    planeId = nil,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {600,1700,83900,83906,83901,83907,83902,83908,83903,83909},
    overtime = 150, --超时时间，/分钟
    endMapIds = {83902}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_hit_range_max=100,
		tobot_hit_range_min=10,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "",
       -- 副本1 大艾
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383234352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383236352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383238352C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C373330302C313430372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C383530302C313430372CD7F3C5DC2C",
       -- 副本2	83900 接任务
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",
       -- 副本3	水土图
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- 副本4	好坏草图
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- 副本5	水土图
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- 副本6	玫瑰图
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- 副本7	水土图
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- 副本8	动物图
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
	   -- 副本9	水土图
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
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
	labeldone=0,
	 onScriptRound = function (config) -- 副本每次切换地图回调
		if getmapid()==600 then
			bot_stop()
			gotocoordinate(1, 3700, 1455)
			open_npc(110088)
			sleep(20)
			npc_plane(110088,212,4,5,0)
			sleep(20)
			close_npc(110088)
			sleep(20)
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
			sleep(20)
			request_task(508,9520101)
			sleep(20)
			submit_task(508,9520101)
			sleep(20)
			close_npc(508)
			sleep(20)
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
		if getmapid() == 83900 then		--接任务 杀魔女
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			bot_stop()
			speak("小星球任务lua开始")
			gotocoordinate(1, 400, 1407)
			open_npc(95205)
			sleep(20)
			request_task(95205,9522106)   --  直接完成的Q 
			sleep(20)
			submit_task(95205,9522106)
			sleep(20)
			request_task(95205,9522107)   --   热 喜 悲 怪
			sleep(20)
			submit_task(95205,9522107)
			sleep(20)
			request_task(95205,9522108)
			sleep(20)
			submit_task(95205,9522108)
			sleep(20)
			close_npc(95205) 
			sleep(20)
			gotocoordinate(1, 2800, 1407)
			open_npc(95201)
			sleep(20)
			request_task(95201,9520102)   --草儿 5
			sleep(20)
			request_task(95201,9520106)	--邪恶魔女  消除怪物
			sleep(20)
			submit_task(95201,9520105)
			sleep(20)
			close_npc(95201)
			sleep(20)
			gotocoordinate(1, 1550, 1407)
			if labeldone==1 then
				speak("小星球（任务）已做完，30s后即将飞出副本")
				sleep(30000)
				plane(70)
			end
			repeat
				sleep(200)
				local mobId = mob_obj_get('邪恶的魔女（半小时后死亡 请接任务后再杀我）')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(500)
						useskill(9531001,1) --消灭怪物
					end	
			until(mobId==0)
			gotocoordinate(1, 2800, 1407)
			open_npc(95201)
			sleep(20)
			submit_task(95201,9520106)
			sleep(20)
			close_npc(95201)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83901 then  --好坏草图
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			bot_stop()
			labelnum=0
			repeat
				sleep(200)
				local mobId = mob_obj_get('坏草')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(500)
						useskill(9531001,1) --消灭怪物
						sleep(500)
						item_use(430453101)--用土  
						bot_start()
						sleep(1000)
						labelnum = labelnum + 1
					end	
			until(labelnum==20)
			bot_stop()
			gotocoordinate(1, 500, 1455)
			open_npc(95202)
			sleep(20)
			submit_task(95202,9520102)
			sleep(20)
			request_task(95202,9520103)
			sleep(20)
			close_npc(95202)
			sleep(1000)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83902 then	 --玫瑰图
			labelxi=0
			labelbei=0
			labelhua=0
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			repeat
				sleep(200)
				if labelxi<40 then --喜 20次
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
						labelxi = labelxi + 1
					end	
				end

				if labelbei<40 and labelxi==40 then --悲--"悲"刷10分钟
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
						labelbei=labelbei+1
					end	
				end
				if labelhua<40 and labelbei==40 then--成长
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
						sleep(500)
						labelhua=labelhua+1
					end	
				end
			until(labelhua==40)
			bot_stop()
			ini_change("tobot_hit_range_right",32)
			ini_change("tobot_hit_range_left",3167)
			gotocoordinate(1, 500, 1455)
			open_npc(95203)
			sleep(20)
			submit_task(95203,9520103)
			sleep(20)
			request_task(95203,9520104)
			sleep(20)
			close_npc(95203)
			sleep(1000)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333135302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C313435352CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83903 then	 --动物图
			labelre=0
			labeldongwu=0
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			repeat
				sleep(200)
				if labelre<40 then
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					local mobId = mob_obj_get('炎热的小狗')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531002,1) --洒水
						sleep(500)
						labelre=labelre+1
					end	
				end
				if labeldongwu<40 and labelre==40 then
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					local mobId = mob_obj_get('渴望关怀的小狗')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531003,1) 
						sleep(500)
						labeldongwu=labeldongwu+1
					end	
				end
			until(labeldongwu==40)
			bot_stop()
			ini_change("tobot_hit_range_right",32)
			ini_change("tobot_hit_range_left",3167)
			gotocoordinate(1, 500, 1455)
			open_npc(95204)
			sleep(20)
			submit_task(95204,9520104)
			sleep(20)
			request_task(95204,9520105)
			sleep(20)
			close_npc(95204)
			sleep(1000)
			labeldone=1
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C313435352CD3D2C5DC2C",0)
			bot_start()	
		end
    end
})