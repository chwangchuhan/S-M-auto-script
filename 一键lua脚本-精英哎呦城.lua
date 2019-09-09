check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "被感染的哎呦城",
    mapCount = 1,
    planeId = 95201,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,84000,84001,84002,84003,84004,84005,84006,84007,84008,84009,84010,84011,84012,84013,84014},
    overtime = 30, --超时时间，/分钟
    endMapIds = {84012,84013,84014}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
	},
	minXSpeed = 850,  -- 站街速低于850会死掉
	minYSpeed = 1120,
	maxYSpeed = 2000,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937302C3635352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935302C3635352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323939302C3635352CB2BBB1E40D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323830302C3635352CB2BBB1E40D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333130302C3635352CB2BBB1E40D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3633342E3331312C313336302CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3633342E3331312C313336302CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 副本1
       "D4CAD0EDB4F2B9D62CD3D2C5DCCAB12C323730302C333032332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD7F326D3D2CAB12C3739392C333032332CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313236342C323736372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313236342C323736372CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C313830302C333032332CCAB9D3C3BCBCC4DC2C333831363030340D0AD7F3CCF82CD7F326D3D2CAB12C313732382C323531322CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3632342C323531322CB2BBB1E42C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3632342C323531322CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313331312C313837312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313435302C313631352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323534342C313631352CB2BBB1E42C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323534342C313631352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3430302C3731392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3435302C3731392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3530302C3731392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3535302C3731392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3630302C3731392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3635302C3731392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3735302C3731392CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3932372C3731392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323637302C3433312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323639302C3433312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323635302C3433312CB2BBB1E42C",
       -- 副本2
       "BDFBD6B9B4F2B9D62CD3D2C5DCCAB12C313030302C313435352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD3D2C5DCCAB12C313230302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363336372C313435352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363334372C313435352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363338372C313435352CB2BBB1E42C",
       -- 副本3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313137302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313139302C3931312CB2BBB1E42C",
       -- 副本4
       "CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3530302C313339312CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3530302C313339312CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3935302C313339312CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3935302C313339312CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3935302C313032332CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3935302C313032332CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313230302C3632332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313533302C3632332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313535302C3632332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313531302C3632332CD7F3C5DC2C0D0A0D0A0D0A0D0A",
       -- 副本5
       "CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3435302C313030372CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3435302C313030372CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C313132302C3439352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C38302C3439352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C36302C3439352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C3439352CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313030302C313339312C20B2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313530302C313030372C20B2BBB1E42C",
       -- 副本6
       "C9CFCCF82CD7F3C5DCCAB12C3930352C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3930352C313437312CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3438302C313131392CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3438302C313131392CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313530302C3833312CD3D2C5DC0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323232342C3935392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323232342C3935392CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CD3D2C5DCCAB12C323232342C313032342CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3534332C3630372CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3534332C3630372CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3633392C3534332CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3633392C3534332CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3530312C3836332CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3530312C3836332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133342C313437312CD7F3C5DC2C",
       -- 副本7
       "CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3530302C3837392CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3530302C3837392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3337302C3335312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3335302C3335312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3339302C3335312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3931322C3335312CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3931322C3335312CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313035302C3837392CCAB9D3C3BCBCC4DC2C333831363030340D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136302C3837392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313134302C3837392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138302C3837392CD3D2C5DC2C",
       -- 副本8
       "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3637302C3531312CD3D2C5DC2E0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3635302C3531312CD3D2C5DC2E0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3633302C3531312CD3D2C5DC2E",
	   -- 副本9
	   "",
	   -- 副本10
	   "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313830302C323630372CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323432352C323538382CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323432352C323538382CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323437302C323135392CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C323435302C323135392CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323436302C323135392CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323437302C323135392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323134392C313838362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323436352C313838392CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323432302C313835302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323432302C313835302CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323433302C313835302CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323434302C313835302CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323330302C313430372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323437312C313432372CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323431312C313431302CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C323431312C313431302CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323432312C313431302CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323430312C313431302CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323231322C313030362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323437312C313033312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323335312C3937352CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323335312C3937352CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323336312C3937352CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323337312C3937352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323435302C3730332CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C323435302C3730332CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323833302C3431352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C3434302CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131372C3435322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130372C3435352CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323336342E38332C313538332E34332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313530332C323736372CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C313430342C323731392CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C323838322C3736372CB2BBB1E42C",
	   -- 副本11
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363336372C313435352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363334372C313435352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363338372C313435352CB2BBB1E42C",
	   -- 副本12
	   "D3D2CCF82CD3D2C5DCCAB12C3338332C313430372CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C313835352C313430372CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C323532372C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032302C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030302C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938302C313430372CB2BBB1E42C",
	   -- 副本13
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3936302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3938302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3934302C313531392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C3833322C313531392CB2BBB1E42C",
	   -- 副本14
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3936302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3938302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3934302C313531392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C3833322C313531392CB2BBB1E42C",
	   -- 副本15
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3936302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3938302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3934302C313531392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C3833322C313531392CB2BBB1E42C",
	   -- 副本16
	   "",
	   -- 副本17
	   "",
    },
    onScriptRound = function () -- 副本每次切换地图回调
        if (getmapid() == 84000) then
			bot_stop()
			sleep(1000)
			bot_start()
        end
		if (getmapid() == 84001) then
           ini_change("ban_hit_mob",1)
        end
		if (getmapid() == 84009) then
			repeat
				sleep(100)
				if getx()<2380 or getx()> 2450 then
				ini_change("tobot_scriptbot",1)
				bot_start()
				end
				if getx()>=2380 and getx()<= 2450 and gety()>=2575 and gety()<=2630 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					bot_stop()
					speak("上跳")
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
					sleep(500)
					jmp(1)
				end
				if gety()==703 then
					jmp(2)
					ini_change("tobot_scriptbot",1)
					bot_start()
				end
			until(getmapid() ~= 84009)
        end
		if (getmapid() == 84011) then
            sleep(20000)
			if getmapid() == 84011 then
			speak("漏怪导致没开门，Lua强制结束")
			plane(95201)
			return true
			end
        end
    end
})