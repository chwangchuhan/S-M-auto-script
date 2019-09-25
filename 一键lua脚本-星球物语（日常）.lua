check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "星球物语",
    mapCount = 1,
    planeId = nil,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {86403,83900,83906,83901,83907,83902},
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
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383234352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383236352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383238352C313430372CB2BBB1E42C",
       -- 副本1
       "C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",
       -- 副本2
       "",
       -- 副本3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- 副本4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- 副本5
       "C9CFCCF82CD7F326D3D2CAB12C323537322C313435352CD3D2C5DC2C",
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
	tasks = {
        {
            mapId = 1700,
            npcId = 508,
            taskIds = {9520101},
        }
    },
	labeldun=0,
	 onScriptRound = function (config) -- 副本每次切换地图回调
		if getmapid() == 83900 then
			bot_stop()
			ini_change("tobot_scriptbot",0)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)<=12 then --"坏的"
					if getx()~=1540 then
						bot_stop()
						ini_change("tobot_nomovebot",0)
						gotocoordinate(1,1540,1407)
					end
					if getx()==1540 then
						ini_change("tobot_nomovebot",1)
						bot_start()
						sleep(200)
						item_use(430453101)
					end
				end
				if gettime(2)==18 and gettime(3)<=25 and gettime(3)>12 then --"好的"
					if getx()~=2550 then
						bot_stop()
						ini_change("tobot_nomovebot",0)
						gotocoordinate(1,2550,1407)
					end
					if getx()==2550 then
						ini_change("tobot_nomovebot",1)
						bot_start()
						sleep(200)
						item_use(430453102)
					end
				end
			until(gettime(2)==18 and gettime(3)>25)
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",1)
			bot_start()
		end
		if getmapid() == 83906 then   --水土
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)>25 and gettime(3)<=55 then
					--gotocoordinate(1,1250,)
					sleep(3000)
					useskill(9531001,1) --消灭怪物
				end
			until(gettime(2)==18 and gettime(3)>55)
			ini_change("tobot_hit_range_left",3167)
		end
		if getmapid() == 83902 then
			ini_change("tobot_nomovebot",0)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)<=59 then --喜
					ini_change("tobot_hit_range_right",2500)
					ini_change("tobot_hit_range_left",3000)
					bot_start()
					sleep(3000)
					useskill(9531003,1) --喜
				end
				if gettime(2)==17 and gettime(3)<=02 then --喜
					ini_change("tobot_hit_range_right",2500)
					ini_change("tobot_hit_range_left",3000)
					bot_start()
					sleep(3000)
					useskill(9531003,1) --喜
				end
				if gettime(2)==19 and gettime(3)>02 and gettime(3)<=14 then --悲
					ini_change("tobot_hit_range_right",2500)
					ini_change("tobot_hit_range_left",3000)
					bot_start()
					sleep(3000)
					useskill(9531004,1) --悲
				end
				if gettime(2)==19 and gettime(3)<=59 then--成长
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					bot_stop()
					gotocoordinate(1,600,1455)
					sleep(3000)
					useskill(9531002,1) --洒水
					gotocoordinate(1,900,1455)
					sleep(3000)
					useskill(9531002,1) --洒水
					gotocoordinate(1,1200,1455)
					sleep(3000)
					useskill(9531002,1) --洒水
					gotocoordinate(1,1500,1455)
					sleep(3000)
					useskill(9531002,1) --洒水
					gotocoordinate(1,1800,1455)
					sleep(3000)
					useskill(9531002,1) --洒水
					gotocoordinate(1,2100,1455)
					sleep(3000)
					useskill(9531002,1) --洒水
					gotocoordinate(1,2400,1455)
					sleep(3000)
					useskill(9531002,1) --洒水
				end				
			until(gettime(2)==20)
		end
    end
})