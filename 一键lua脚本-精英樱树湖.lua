check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "樱树湖历险",
    mapCount = 1,
    planeId = 992,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,99200,99201,99202,99203,99204,99205,99206},
    overtime = 30, --超时时间，/分钟
    endMapIds = {99204,99205,99206}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_giveitemif=1,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    isLuckyDog = true,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313432332E38382C313335392E362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313337312E34332C313335392E362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313434342E38362C313335392E362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 副本1
       "D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323137362C313535312CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323838302C313335392CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3730342C313537352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3730302C3735312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3539322C3735312CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3438302C313234372CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C33322C313535312CB2BBB1E42C",
       -- 副本2
       "D3D2CCF82CD7F3C5DCCAB12C323830302C313334332CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323439362C313436332CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323630302C313033392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323433312C313432332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323130302C3339392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323235362C3339392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313835302C3735312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313430302C3836332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313035302C3836332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3732302C3836332CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3432302C3937352CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313031302C313239352CB2BBB1E42C",
       -- 副本3
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323939322C313139392CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323939322C313139392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323835322C313139392CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323135302C313539392CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313239302C313539392CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3530302C313533352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323635352C313539392CD3D2C5DC2C",
       -- 副本4
       "D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323830302C313433392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323830302C3436332CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C333130302C3934332CD7F3C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C313237392C313433392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313030302C313133352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3130302C3539312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3132302C3539312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3134302C3539312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3230302C3539312CD3D2C5DC2C",
       -- 副本5
       "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313332302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313335302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313338302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
       -- 副本6
       "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313332302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313335302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313338302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
       -- 副本7
       "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313332302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313335302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313338302C313536372CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
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
        if (getmapid() == 99200) then
			labelnext=0
			ini_change("tobot_hit_range_top",250)
			ini_change("tobot_hit_range_max",300)
			repeat
				sleep(200)
				if mob_if("奖励宝箱")==0 and door_if(100,1247)==1 then
				speak("开启进门")
				labelnext=1
				script_txt_loaddata("D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323137362C313535312CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323838302C313335392CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3730342C313537352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3730302C3735312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3539322C3735312CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3438302C313234372CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C33322C313535312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C35302C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C37302C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3130302C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3132302C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3135302C313234372CB2BBB1E42C",0)
				end
			until(labelnext==1)
        end
		if (getmapid() == 99201) then
			labelnext=0
			repeat
				sleep(200)
				if mob_if("奖励宝箱")==0 and door_if(150,975)==1 then
				speak("开启进门")
				labelnext=1
				script_txt_loaddata("D3D2CCF82CD7F3C5DCCAB12C323830302C313334332CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323439362C313436332CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323630302C313033392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323433312C313432332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323130302C3339392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323235362C3339392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313835302C3735312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313430302C3836332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313035302C3836332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3732302C3836332CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3432302C3937352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3135302C3937352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3132302C3937352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3138302C3937352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313031302C313239352CB2BBB1E42C",0)
				end
			until(labelnext==1)
        end
		if (getmapid() == 99202) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_hit_range_max",300)
			labelnext=0
			repeat
				sleep(200)
				if mob_if("奖励宝箱")==0 and door_if(120,1231)==1 then
				speak("开启进门")
				labelnext=1
				script_txt_loaddata("CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323939322C313139392CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323939322C313139392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323835322C313139392CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323135302C313539392CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313239302C313539392CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3530302C313533352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323635352C313539392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3132302C313233312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3130302C313233312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3134302C313233312CB2BBB1E42C",0)
				end
			until(labelnext==1)
        end
		if (getmapid() == 99203) then
			ini_change("tobot_hit_range_top",250)
			ini_change("tobot_hit_range_max",300)
        end
    end
})