check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "路德维希大峡谷",
    mapCount = 1,
    planeId = 96106,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {84200,84300,84301,84302,84303,84304,84305,84306,84307,84308,84309,84310,84311},
    overtime = 20, --超时时间，/分钟
    endMapIds = {84309,84310,84311}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3834302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3836302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3838302C313433392CD7F3C5DC2C",
       -- 前段	1
       "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333037302C323936372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333035302C323936372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333039302C323936372CD3D2C5DC2C",
       -- boss房间	2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3332302C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3334302C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3336302C313331312CD7F3C5DC2C",
       -- 中段	3
       "D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323735302C323934332CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323635302C323333352CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3530302C313636332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313337352C3934332CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313632302C3837392CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313536342C3837312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313535342C3836382CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313435352C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313437352C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313439352C3336372CD3D2C5DC2C",
       -- 	4
       "",
       -- 熊	5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313434302C3932372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313436302C3932372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438302C3932372CD3D2C5DC2C",
       -- 机关	6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3731302C323535392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3733302C323535392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3735302C323535392CD3D2C5DC2C",
       -- boss房间	7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3332302C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3334302C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3336302C313331312CD7F3C5DC2C",
       -- 8
       "",
	   -- 9
	   "",
	   -- 奖励房间	10
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3836342C313134332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3837342C313134312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3931362C313133302CB2BBB1E42C",
	   -- 奖励房间	11
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3836342C313134332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3837342C313134312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3931362C313133302CB2BBB1E42C",
	   -- 奖励房间	12
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3836342C313134332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3837342C313134312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3931362C313133302CB2BBB1E42C",
	   -- 13
	   "",
	   --  14
	   "",
	   --  15
	   "",
	   --  16
	   "",
	   -- 副本17
	   "",
	},
})