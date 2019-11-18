check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "猫头鹰的神秘组织",
    mapCount = 1,
    planeId = 991,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,99100,99101,99102,99103,99104,99105,99106,99107,99108,99109},
    overtime = 30, --超时时间，/分钟
    endMapIds = {99107,99108,99109}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
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
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935302C313335392CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937302C313335392CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323933302C313335392CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323830302C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333130302C313335392CD7F3C5DC2C",
       -- 副本1
       "C9CFCCF82CD7F326D3D2CAB12C3537352C313432362CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323834372C3937352CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323230382C313432332CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323735302C313432332CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333035362C3238372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333130302C3738332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333132302C3738332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333134302C3738332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323937302E3738332CD7F3C5DC2C",
       -- 副本2
       "D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313039302C313234372CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313230302C313535312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313533302C3739392CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3230302C3738332CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C313732382C313432332CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323738302C313432332CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333038382C3437392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333130302C3738332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333132302C3738332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333134302C3738332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323630302C3837392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C333031352C3738332CD7F3C5DC0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323232332C3937352CD3D2C5DC",
       -- 副本3
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3139302C313136372CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313830302C313432332CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C333036302C3931312CD7F3C5DC2C",
       -- 副本4
       "D3D2CCF82CD7F3C5DCCAB12C3535302C313331312CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313030382C313138332CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C3932382C3630372CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3430302C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C36342C3630372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C38342C3630372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130342C3630372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323933302C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935302C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937302C313433392CB2BBB1E42C",
       -- 副本5
       "D3D2CCF82CD7F3C5DCCAB12C3430302C313331312CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323131322C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323333302C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323335302C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323337302C313331312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313030382C313138332CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313030382C3630372CD3D2C5DC2C",
       -- 副本6
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C34302C313531392CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C313536372C313531392CD3D2C5DC2C",
       -- 副本7
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313232302C3739392CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3436342C313533352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313835352C313533352CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323130302C313339312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323530302C313231352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034302C3736392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035302C3736392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C3736392CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C333035302C3736392CB2BBB1E42C",
       -- 副本8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313033302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313035302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313037302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
	   -- 副本9
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313033302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313035302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313037302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
	   -- 副本10
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313033302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313035302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313037302C313531392CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
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
        if (getmapid() == 83100) then
		   ini_change("tobot_hit_range_max",250)
		   ini_change("tobot_hit_range_ignore",1200)
        end
		if (getmapid() == 99102) then
           ini_change("tobot_hit_range_top",400)
		   labelnext=0
		   labellasttime=gettime(3)
		   labelnowtime=0
		   repeat
				sleep(200)
				if mob_if("宝箱1")==0 and mob_if("宝箱2")==0 and mob_if("奖励宝箱")==0 and door_if(3060,911)==1 and labelnext==0 then
				speak("开启进门")
				labelnext=1
				script_txt_loaddata("D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3139302C313136372CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313830302C313432332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034302C3931312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036302C3931312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C3931312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C333036302C3931312CD7F3C5DC2C",0)
				end
				labelnowtime=gettime(3)
				if labelnowtime - labellasttime ==3 or labelnowtime - labellasttime ==-57 then
					speak("超时3分钟，开启进门")
					labelnext=1
					script_txt_loaddata("C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C34302C313531392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313532302C313531392CB2BBB1E42C",0)
				end
		   until(labelnext==1)
        end
		if (getmapid() == 99103) then
		   ini_change("tobot_hit_range_top",300)
           ini_change("tobot_hit_range_max",400)
		   sleep(2000)
		   repeat
			sleep(100)
				local mobId = mob_obj_get('盗贼大头目')
				if (mobId > 0) then
					ini_change("tobot_hit_range_right",32)
					ini_change("tobot_hit_range_left",831)
				else
					ini_change("tobot_hit_range_right",32)
					ini_change("tobot_hit_range_left",3167)
				end	
		until( mobId ==0 or getmapid() ~= 99103)
        end
		if (getmapid() == 99104) then
			ini_change("tobot_hit_range_right",32)
			ini_change("tobot_hit_range_left",3167)
		   ini_change("tobot_hit_range_top",100)
           ini_change("tobot_hit_range_max",300)
        end
		if (getmapid() == 99105) then
		   labelnext=0
		   labellasttime=gettime(3)
		   labelnowtime=0
		   repeat
				sleep(200)
				if mob_if("奖励宝箱1")==0 and mob_if("奖励宝箱2")==0 and mob_if("奖励宝箱3")==0 and mob_if("奖励宝箱4")==0 and door_if(1500,1519)==1 and labelnext==0 then
					speak("开启进门")
					labelnext=1
					script_txt_loaddata("C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C34302C313531392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313532302C313531392CB2BBB1E42C",0)
				end
				labelnowtime=gettime(3)
				if labelnowtime - labellasttime ==3 or labelnowtime - labellasttime ==-57 then
					speak("超时3分钟，开启进门")
					labelnext=1
					script_txt_loaddata("C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C34302C313531392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313532302C313531392CB2BBB1E42C",0)
				end
		   until(labelnext==1)
        end
		if (getmapid() == 99106) then
           ini_change("tobot_hit_range_top",100)
		   ini_change("tobot_hit_range_down",100)
        end
    end
})