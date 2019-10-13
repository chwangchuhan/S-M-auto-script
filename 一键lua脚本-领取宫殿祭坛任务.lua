check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "一键领取宫殿祭坛任务",
    mapCount = 1,
    planeId = 274,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {35404,35403,35400,35500},
    overtime = 20, --超时时间，/分钟
    endMapIds = {35500}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        ban_hit_mob=1,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 首都5
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323531322E392C313035352E30342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134302C313435352E33312CD7F3C5DC2C",
       -- 首都4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134302C313435352E33312CD7F3C5DC2C",
       -- 首都1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3136302C313435352E33312CD7F3C5DC2C",
	},
	 tasks = {
        {
            mapId = 35500,
            npcId = 7168,
            taskIds = {172000148,172000149},
        }
    },
	onScriptRound = function  ()
		repeat
			sleep(200)
			if (getmapid() == 35500) then
			  sleep(10000)
			  ini_change("ban_hit_mob",0)
			  return true
			end
		until(getmapid() ~= 35500)
    end
})