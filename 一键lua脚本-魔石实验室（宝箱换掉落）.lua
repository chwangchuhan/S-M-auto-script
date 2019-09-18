check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "魔石实验室",
    mapCount = 3,
    planeId = 259,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {34204,34000,34001,34002,34003,34004,34005,34006,34007,34008,34009,34010,34011,34012,34013,34014,34015},
    overtime = 60, --超时时间，/分钟
    endMapIds = {34015}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	isAutoWearDiaoluo = true,
	isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313730352E36342C313136382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 大厅1
       "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313238322C3736372CD7F3C5DC2C",
       -- 下水道1 2
       "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C393532302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C393530302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C393438302C313433392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3733302C3237312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323635302C3534332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C363735302C313032332CD3D2C5DC2C200D0AD7F3CCF82CD7F326D3D2CAB12C383630382C313433392CD7F3C5DC0D0AD7F3CCF82CD7F326D3D2CAB12C363838302C313136372CD7F3C5DC0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C343630382C3834372CD7F3C5DC0D0AD7F3CCF82CD7F326D3D2CAB12C323738342C3738332CD7F3C5DC0D0AD7F3CCF82CD7F326D3D2CAB12C3839362C3534332CD7F3C5DC",
       -- 下水道2 3
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3430312C3237312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323537372C313433392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C343439372C3731392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C363039342C3931312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C363739302C313135312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C393532302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363732372C3339392CD7F3C5DC2C",
       -- 地下通道进1 4
       "D3D2CCF82CD3D2C5DCCAB12C323139352C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3530302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313030302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313530302C3531312CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3633352C313139392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C313139392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323134352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3633352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313230302C323034372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C33322C323638382E32382CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C33322C323034372E34352CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3432392C323637322CB2BBB1E42C",
       -- 地下通道进2 5
       "D3D2CCF82CD3D2C5DCCAB12C323139352C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3530302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313030302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313530302C3531312CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3633352C313139392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C313139392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323134352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3633352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313230302C323034372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C33322C323638382E32382CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C33322C323034372E34352CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313035302C323637322CB2BBB1E42C",
       -- 地下通道进3 6
       "D3D2CCF82CD3D2C5DCCAB12C323139352C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3530302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313030302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313530302C3531312CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3633352C313139392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C313139392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323134352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3633352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313230302C323034372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C33322C323638382E32382CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C33322C323034372E34352CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323134322C323637322CB2BBB1E42C",
       -- 地下通道进4 7
       "D3D2CCF82CD3D2C5DCCAB12C323139352C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3530302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313030302C3531312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313530302C3531312CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3633352C313139392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C313139392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323134352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3633352C323034372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313230302C323034372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C33322C323638382E32382CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C33322C323034372E34352CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313530302C313139392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323737392C323637322CB2BBB1E42C",
       -- 第二实验室 8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3736322C3939312CB2BBB1E42CAD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3939312CD3D2C5DC2CAD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3939312CD7F3C5DC2CA",
	   -- 陷进空 9
	   "",
	   -- 陷进空 10
	   "",
	   -- 陷进空 11
	   "",
	   -- 地下通道2 12
	   "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323539322C313433392CCBE6BBFA2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C393439352C313433392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C393439352C313433392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C393439322C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C363730392C3339392CCBE6BBFA2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3835332C3939312CCBE6BBFA2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3836342C3939312CCBE6BBFA2C",
	   -- 地下通道3 13
	   "CFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3131322C3237312CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3131322C3239352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313535322C3534332CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C313535322C3538382CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3137362C3836332CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3137362C3930342CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313731322C313136372CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C313731322C313139382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130382C313435352CCBE6BBFA2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3132382C313435352CCBE6BBFA2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C38382C313435352CCBE6BBFA2C",
	   -- 地下通道4 14
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3331362C3935392CB2BBB1E42C",
	   -- 第一实验室 15
	   "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3832332C3939312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
	   -- 第一实验室 16
	   "",
	   
	   -- 副本17
	   "",
	},
	onScriptRound = function () -- 副本每次切换地图回调
        if (getmapid() == 34000) then
			bot_stop()
			common.wearGongji()
			sleep(1000)
			bot_start()
        end
		if (getmapid() == 34003) then
			ini_change("tobot_hit_range_top",400)
			ini_change("tobot_hit_range_max",400)
			ini_change("tobot_hit_range_ignore",2000)
			speak("已检测到贾格尔房间，进1门")
			sleep(1000)
        end
		if (getmapid() == 34004) then
			ini_change("tobot_hit_range_top",400)
			ini_change("tobot_hit_range_max",400)
			ini_change("tobot_hit_range_ignore",2000)
			speak("已检测到贾格尔房间，进2门")
			sleep(1000)
        end
		if (getmapid() == 34005) then
			ini_change("tobot_hit_range_top",400)
			ini_change("tobot_hit_range_max",400)
			ini_change("tobot_hit_range_ignore",2000)
			speak("已检测到贾格尔房间，进3门")
			sleep(1000)
        end
		if (getmapid() == 34006) then
			ini_change("tobot_hit_range_top",400)
			ini_change("tobot_hit_range_max",400)
			ini_change("tobot_hit_range_ignore",2000)
			speak("已检测到贾格尔房间，进4门")
			sleep(1000)
        end
		if (getmapid() == 34007) then
			ini_change("tobot_hit_range_max",250)
			ini_change("tobot_hit_range_ignore",1200)
        end
		if (getmapid() == 34014) then	
			ini_change("tobot_hit_range_top",100)
			speak("为防止遗漏，请及时清理包裹")
			sleep(500)
        end
		if (getmapid() == 34015) then
			speak("为防止遗漏，请及时清理包裹")
			sleep(500)
			bot_stop()
			common.wearDiaoluo()
			sleep(500)
			bot_start()
			sleep(3000)
			bot_stop()
			common.wearGongji()
			sleep(1000)
			bot_start()
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3832332C3939312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",0)
        end
    end
})