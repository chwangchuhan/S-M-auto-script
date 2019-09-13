check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "保护春植园",
    mapCount = 1,
    planeId = 83600,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,83600,83601,83602,83603,83604,83605,83606},
    overtime = 30, --超时时间，/分钟
    endMapIds = {83604,83605,83606}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
	},
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313839302C3635352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313931302C3635352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313933302C3635352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313730302C3635352CD3D2C5DC0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323130302C3635352CD7F3C5DC0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3633342E3331312C313336302CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3633342E3331312C313336302CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 春值	1
       "D3D2CCF82CD7F3C5DCCAB12C3830302C313435352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323835302C3931312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323930302C3931312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333930302C3931312CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C333935302C313435352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF82CD7F326D3D2CAB12C363336372C313435352CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C363130302C313139392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C353430382C3831352CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C343738302C3535392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C353732322C3336372CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313636352C313332372CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C313939352C313133352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363233372C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363236372C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363239372C3831352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323338362E39342C3831352E392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323338362E362C3531312E3134312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323739312C3531312E362CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323830342E39322C3931312E30382CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333337362C3931312CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C333337362C313135392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C353837322C3831352CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C353130302C313435352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323732302C313435352CD7F3C5DC2C",
       -- 春值	2
       "D3D2CCF82CD7F3C5DCCAB12C3835302C313435352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F326D3D2CAB12C313833382C313139392CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313338302C3934332CD3D2C5DC2C0D0AD7F3CCF82CD3D2C5DCCAB12C323735302C3632332CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313634382C3439352CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323939322C313435362CD3D2C5DC0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313336352E39352C3934332E3334372CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133352C3632332C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130352C3632332C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037352C3632332C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323738342C313037312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313830302C3934332CD3D2C5DC2C",
       -- 春值	3
       "D3D2CCF82CD7F3C5DCCAB12C3930302C3831352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3433322C3535392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313735302C3539392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C333032342C313139392CD3D2C5DC0D0AD7F3CCF82CD7F326D3D2CAB12C323230382C313435352CD3D2C5DC0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313838382C313139392CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C323932322C313435362CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C313139392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133302C313139392CD3D2C5DC2C",
       -- 春值	4
       "D3D2CCF82CD7F326D3D2CAB12C3836342C313432332CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C3932382C3632332CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3232332C3735312CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313832342C313335392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C333831343030370D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313639352C3733352CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313935322C313438372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036342C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039342C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C3831352CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3131392C313131392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313234382C3632332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313135382C3632332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3932382C3632332CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3537362C3632332CD3D2C5DC2CCAB9D3C3BCBCC4DC2C39383739393939",
       -- 奖励5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630362C313435352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538362C313435352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632362C313435352CB2BBB1E4",
       -- 奖励6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630362C313435352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538362C313435352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632362C313435352CB2BBB1E4",
       -- 奖励7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630362C313435352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538362C313435352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632362C313435352CB2BBB1E4",
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
    onScriptRound = function () -- 副本每次切换地图回调
        if (getmapid() == 83602) then
			ini_change("tobot_hit_range_max",800)
			ini_change("tobot_hit_range_ignore",2000)
        end
		if (getmapid() == 83603) then
			ini_change("tobot_hit_range_max",300)
			ini_change("tobot_hit_range_ignore",2000)
        end
    end
})