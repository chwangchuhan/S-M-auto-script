check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")
 
common.simpleStart({
    mapName = "领取宝石每日任务",
    mapCount = 1,
    planeId = 289,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {38004,38003,38000,36801,36800},
	endMapIds = {36800}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
	initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
	},
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
	isLuckyDog = true,
    scripts = {
	--修炼5
        "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3635362C3637312CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323131322C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C39302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134332C313433392CD7F3C5DC2C",
	--修炼4
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C39302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134332C313433392CD7F3C5DC2C",
	--修炼1
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C37392C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132352C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3137312C313433392CD7F3C5DC2C",
	--风盖总部
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3636372C313331332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3730342C313331312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3734332C313331312CD3D2C5DC2C",
		"",
	},
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {},
	 onScriptRound = function  ()
		if getmapid()==36800 then
			ini_change("find_is_zhiding",0)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			open_npc(7198)
			sleep(20)
			request_task(7198,174001050,1)
			sleep(20)
			close_npc(7198)
			sleep(1000)
			bot_stop()
			sleep(2000)
			plane(283)
		else
			ini_change("find_zhiding","")
			ini_change("find_is_zhiding",1)
			ini_change("find_is_youhao",0)
			ini_change("find_is_ewai",0)
		end
    end
})
 