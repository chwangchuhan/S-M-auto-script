check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "保护春植园",
    mapCount = 1,
    planeId = 83600,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,83600,97400,97401,97402,97403,97403,97405},
    overtime = 30, --超时时间，/分钟
    endMapIds = {83604,83605,83606}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_giveitemif=1,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
    minYSpeed = 200,
    maxYSpeed = 2000,
	minXSpeed = 200,
    maxXSpeed = 2000,
    isLuckyDog = true,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313839302C3635352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313931302C3635352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313933302C3635352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313730302C3635352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323130302C3635352CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3633342E3331312C313336302CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3633342E3331312C313336302CD3D2C5DC2C",
       -- 春值	1
       "D3D2CCF82CD7F3C5DCCAB12C3835302C313435352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323835302C3931312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323930302C3931312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333930302C3931312CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C333930302C313435352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF82CD7F326D3D2CAB12C363336372C313435352CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C363130302C313139392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C353430382C3831352CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C343738302C3535392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C353732322C3336372CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313636352C313332372CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C313939352C313133352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363233372C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363236372C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363239372C3831352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323338362E39342C3831352E392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323338362E362C3531312E3134312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323739312C3531312E362CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323830342E39322C3931312E30382CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333337362C3931312CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C333337362C313135392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C353837322C3831352CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C353135302C313435352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323732302C313435352CD7F3C5DC2C",
       -- 春值	2
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313330302C3837392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335302C3837392CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3837392CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C333230302C3436342CD3D2C5DC2C",
       -- 春值	3
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313330302C3837392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335302C3837392CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3837392CD3D2C5DC2C",
       -- 春值	4
       "D3D2CCF82CD7F326D3D2CAB12C3836342C313432332CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3932382C3632332CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3232332C3735312CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323030302C302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323030302C32302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323030302C34302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313832342C313335392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C333831343030370D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313639352C3733352CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313935322C313438372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036342C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039342C3831352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C3831352CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3131392C313131392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313234382C3632332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313135382C3632332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3932382C3632332CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3537362C3632332CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C333038302C313438372CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323939302C3831352CD7F3C5DC2C",
       -- 奖励5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
       -- 奖励6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
       -- 奖励7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632362C313435352CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
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
        if (getmapid() == 97400) then
			repeat
				sleep(100)
				if getx()>=32 and getx()<=200 and gety()==879 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,170,879)
					sleep(500)
					jmp(2)
					sleep(1000)
				end
				if getx()>=450 and getx()<=570 and gety()==791 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,565,791)
					sleep(500)
					jmp(2)
					sleep(1000)
				end
				if getx()>=880 and getx()<=990 and gety()==791 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,985,791)
					sleep(500)
					jmp(2)
					sleep(1000)
				end
				if getx()>=224 and getx()<=1279 and gety()==935 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					jmp(2)
					sleep(800)
					jmp(2)
					sleep(800)
					jmp(2)
					sleep(800)
					jmp(2)
					sleep(800)
					jmp(2)
					sleep(800)
					jmp(2)
					sleep(800)
				end
				if getx()>=1300 and getx()<=1727 and gety()==879 then
					ini_change("tobot_scriptbot",1)
					bot_start()
				end
				if getx()>=3460 and getx()<=3680 and gety()==367 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,3620,367)
					jmp(2)
					sleep(500)
					useskill(9879999,0)
				end
				if getx()>=4320 and getx()<=4415 and gety()==687 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,4380,687)
					jmp(1)
					sleep(500)
					useskill(9879999,0)
				end
				if getx()>=4480 and getx()<=4920 and gety()==879 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,4850,879)
					jmp(2)
					sleep(500)
				end
				if getx()>=5120 and getx()<=5210 and gety()==775 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,5180,775)
					jmp(1)
					sleep(500)
					useskill(9879999,0)
				end
				if getx()>=5375 and getx()<=5460 and gety()==775 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,5430,775)
					jmp(1)
					sleep(500)
					useskill(9879999,0)
				end
				if getx()>=5630 and getx()<=5720 and gety()==775 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,5675,775)
					jmp(1)
					sleep(500)
					useskill(9879999,0)
				end
				if getx()>=5885 and getx()<=5975 and gety()==775 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,5930,775)
					jmp(1)
					sleep(500)
					useskill(9879999,0)
				end
				if getx()>=6125 and getx()<=6230 and gety()==775 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,6175,775)
					jmp(1)
					sleep(500)
					useskill(9879999,0)
				end
				if getx()>=6370 and getx()<=6460 and gety()==775 then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,6415,775)
					jmp(2)
					sleep(500)
				end
			until(getx()>=10000)
        end
		if (getmapid() == 83603) then
			labellasttime=gettime(3)
			labelnowtime=0
			repeat
				sleep(100)
				if gety()==1359 then
					bot_stop()
					ini_change("tobot_hit_range_max",700)
					ini_change("tobot_hit_range_top",150)
					ini_change("tobot_hit_range_ignore",2000)
					bot_start()
				else
					ini_change("tobot_hit_range_max",300)
					ini_change("tobot_hit_range_top",150)
				end
				labelnowtime=gettime(3)
				if labelnowtime - labellasttime ==10 or labelnowtime - labellasttime ==-50 then
				speak("超时10分钟，10s退出副本")
				sleep(10000)
				plane(70)
				end
			until(door_if(3130,1487)==1 or getmapid() ~= 83603)
        end
    end
})