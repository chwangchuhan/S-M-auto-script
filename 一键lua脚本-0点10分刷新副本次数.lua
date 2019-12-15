check=1

mapIds = {600,403}

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
		speak("S&M 一键lua提醒：0点10分刷新副本次数lua启动")
		sleep(1000)
		plane(95800)
end

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")
 
common.simpleStart({
    mapName = "0点刷新副本次数",
    mapCount = 1,
    planeId = 95800,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {600,403},
	endMapIds = {403}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
	initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
	},
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
	isLuckyDog = true,
    scripts = {
	
        "",
	
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323634322C3932372CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323631322C3932372CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323538322C3932372CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323535322C3932372CB2BBB1E4",
	
        "",
	
        "",
		"",
	},
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {},
	 onScriptRound = function  ()
		if getmapid()==600 then
			bot_stop()
			labelstop=0
			gotocoordinate(1,4367,1455)
			repeat
				sleep(60000)
					if gettime(2)<=23 and gettime(2)>=12 then
						speak("S&M 0点10分刷新副本次数lua，当前时间"..gettime(2).."点"..gettime(3).."分，0点10分开始刷新，请等待。虎头鲍爱与毁nmsl")
						bot_stop()
					end
					if gettime(2)>=0  and gettime(2)<12 and gettime(3)>=10 then
						speak("S&M 0点10分刷新副本次数lua，当前时间"..gettime(2).."点"..gettime(3).."分，10秒开始刷新副本次数")
						sleep(10000)
						plane(4)
						labelstop=1
					end
			until(labelstop==1)
		end
    end
})
 