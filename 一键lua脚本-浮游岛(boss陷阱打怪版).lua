check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "浮游岛",
    mapCount = 5,
    planeId = 289,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {38004.0,37900,37901,37902,37903,37904,37905,37906,37907,37908,37909,37910,37911},
    overtime = 400, --超时时间，/分钟
    endMapIds = {37911}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_giveitemif=0, 
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
    isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3237302C3637312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3239302C3637312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3331302C3637312CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313539392C313433392CD7F3C5DC2CCAB9D3C3B7C9BBFA2C3238390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323530302C313433392CD7F3C5DC2CCAB9D3C3B7C9BBFA2C323839",
       -- 浮游岛
       "D3D2CCF82CD7F326D3D2CAB12C313732372C3731392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323133302C3539312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323135302C3539312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323137302C3539312CB2BBB1E42C",
       -- 路口 
       "D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3530302C3535392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3634302C3638372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3736382C3831352CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313335302C3934332CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323032302C313037312CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323636302C313139392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C333331302C313332372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C343331302C313435352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363230302C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363232302C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363234302C3632332CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C363336372C313538332CB2BBB1E42C",
       -- 入口
       "D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323232302C3837392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313836302C313030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313838302C313030372CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C313831302C313030372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438302C313133352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313133352CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3531322C313339312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3135302C313030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323334302C3837392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323332302C3837392CD7F3C5DC2C",
       -- 训练地1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333536302C313833392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333534302C313833392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333532302C313833392CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3438302C3730342CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3438302C3730342CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313035352C3730342CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313530342C3730342CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323037392C3730342CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3939322C313434302CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313536372C313434302CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323539312C313434302CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C323031362C313434302CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD3D2C5DCCAB12C313138302C313833392CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C323135302C313833392CB2BBB1E42C",
       -- 2
       "D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3132372C313339312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3830302C313030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832302C313030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3834302C313030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538302C313030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630302C313030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632302C313030372CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323638372C313030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036302C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3632332CB2BBB1E42C",
       -- 修炼1
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353330302C3433312CD3D2C5DC2C0D0AD4CAD0EDB4F2B9D62CD3D2C5DCCAB12C363336372C3433312CB2BBB1E42C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C363336372C3433312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C343034382C3433312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C363030302C3934332CD3D2C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C363336372C313339312CB2BBB1E42C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C363030302C313339312CB2BBB1E42C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333030302C313339312CB2BBB1E42C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333035302C313339312CB2BBB1E42C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333130302C313339312CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C333030302C313339312CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C333035302C313339312CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C333130302C313339312CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C333135302C313339312CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3530302C313339312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3136302C313339312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138302C313339312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3230302C313339312CB2BBB1E42C",
       -- 陷阱1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3632302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3636302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C33322C313430372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313234372C313430372CB2BBB1E42C",
       -- 修炼2
       "D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3336302C3238372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3939302C3431352CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313538302C3534332CB2BBB1E42C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313630302C3534332CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313935302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323030302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323130302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323230302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323330302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323430302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323530302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323630302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323730302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323830302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323831352C3637312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343234302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343236302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343238302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333734302C3431352CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333030302C3534332CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343237302C3431352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343335312C3431352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343130302C3431352CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C353933362C3534332CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C353730302C313833392CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C343936302C313530342CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C333933362C313530342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3133302C313833392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135302C313833392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3137302C313833392CB2BBB1E42C0D0AD7F3CCF82CD3D2C5DCCAB12C313830302C313833392CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD3D2C5DCCAB12C3435302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C33322C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3130302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3230302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3330302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3430302C313833392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C343335312C3431352CD7F3C5DC2C",
	   -- 陷阱2
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C323030300D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C33322C313430372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313234372C313430372CB2BBB1E42C",
	   -- 修炼3
	   "D7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3530302C313332372CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313533352C3638372CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323638382C3934332CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323830302C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323832302C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323834302C3934332CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C333731312C3638372CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343939322C3638372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353235302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353238302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353232302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363133302C313332372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363135302C313332372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363137302C313332372CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343830302C313833392CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343836332C313833392CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C353735392C313435352CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C353337352C313538332CD3D2C5DC2C",
	   -- 战场
	   "D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3335302C3238372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313030302C313030372CB2BBB1E42C",
	   -- 奖励
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
		if (getmapid() == 37901) then
			item_use(170191135)--世界树减伤药
			sleep(100)
			item_use(611113086)--最大吸红
			sleep(100)
			item_use(611113016)--三星芝士汤
			sleep(100)
			item_use(430453126)--星球坚不可摧
			useskill(5000420,1)
			sleep(14000)
			useskill(43501018,1)
			sleep(12000)
			useskill(43501022,1)
			repeat
				sleep(200)
				if door_if(6222,623)==1 then
					speak("门开了")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
					sleep(200)
					bot_start()
				end
			until(door_if(6222,623)==1)
			bot_start()
        end
		if (getmapid() == 37902) then
			ini_change("ban_hit_mob",0)
			ini_change("tobot_giveitemif",0)
        end
		if (getmapid() == 37903) then
            repeat
				sleep(200)
				if gety()==1471 or gety()==735 then
					speak("禁止攻击")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				else
					ini_change("ban_hit_mob",0)
				end
				if door_if(3540,1839)==1 then
					speak("门开了")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
			until( door_if(3540,1839)==1)
			bot_start()
        end
		if (getmapid() == 37904) then
			ini_change("ban_hit_mob",0)
        end
		if (getmapid() == 37905) then   --修炼1
			item_use(170191135)--世界树减伤药
			sleep(10)
			labelyao=0
			labelkuang=0
			repeat
				sleep(200)
				if gety()==431 and getx()<5600 and getx()>3750 then
					speak("禁止攻击")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
				if gety()==431 and getx()<=3750 and getx()>=3680 then
					ini_change("ban_hit_mob",0)
					ini_change("tobot_hit_range_right",3680)
					ini_change("tobot_hit_range_left",3750)
					local mobId1 = mob_obj_get('秘密森林召唤术士')
					local mobY1 = mob_obj_y(mobId1)
					local mobX1 = mob_obj_x(mobId1)
					local mobId2 = mob_obj_get('秘密森林战士')
					local mobY2 = mob_obj_y(mobId2)
					local mobX2 = mob_obj_x(mobId2)
					local mobId3 = mob_obj_get('发狂的死亡面孔')
					local mobY3 = mob_obj_y(mobId3)
					local mobId4 = mob_obj_get('??? ?')
					local mobx4 = mob_obj_x(mobId4)
					if mobY2 ~=431 and mobY1~=431 then
						speak("一层已清")
						ini_change("tobot_hit_range_right",32)
						ini_change("tobot_hit_range_left",99999)
					end
				end
				if gety()==431 and getx()<4500 and getx()>3750  then
					local mobId1 = mob_obj_get('秘密森林召唤术士')
					local mobY1 = mob_obj_y(mobId1)
					local mobX1 = mob_obj_x(mobId1)
					local mobId2 = mob_obj_get('秘密森林战士')
					local mobY2 = mob_obj_y(mobId2)
					local mobX2 = mob_obj_x(mobId2)
					local mobId3 = mob_obj_get('发狂的死亡面孔')
					local mobY3 = mob_obj_y(mobId3)
					local mobId4 = mob_obj_get('??? ?')
					local mobx4 = mob_obj_x(mobId4)
					if mobY1==431 then
						speak("躲避闪电1")
						jmp(0)
						ini_change("tobot_hit_range_right",3680)
						ini_change("tobot_hit_range_left",3750)
						ini_change("ban_hit_mob",1)
						sleep(200)
						bot_start()
					end
					if mobY2==431 then
						speak("躲避闪电1")
						jmp(0)
						ini_change("tobot_hit_range_right",3680)
						ini_change("tobot_hit_range_left",3750)
						ini_change("ban_hit_mob",1)
						sleep(200)
						bot_start()
					end
				end
				if gety()==943 and getx()<=3750 and getx()>=3680 and labelyao<1 then --吃药一次
					item_use(611113086)--最大吸红
					sleep(10)
					item_use(611113016)--三星芝士汤
					sleep(10)
					item_use(430453126)--星球坚不可摧
					sleep(10)
					item_use(611113089)--最大攻免
					labelyao=1
				end
				if gety()==943 and getx()<4500 and getx()>3750  then
					local mobId1 = mob_obj_get('秘密森林召唤术士')
					local mobY1 = mob_obj_y(mobId1)
					local mobX1 = mob_obj_x(mobId1)
					local mobId2 = mob_obj_get('秘密森林战士')
					local mobY2 = mob_obj_y(mobId2)
					local mobX2 = mob_obj_x(mobId2)
					local mobId3 = mob_obj_get('发狂的死亡面孔')
					local mobY3 = mob_obj_y(mobId3)
					local mobId4 = mob_obj_get('??? ?')
					local mobx4 = mob_obj_x(mobId4)
					if mobY1==943 then
						speak("躲避闪电2")
						jmp(0)
						ini_change("tobot_hit_range_right",3680)
						ini_change("tobot_hit_range_left",3750)
						ini_change("ban_hit_mob",1)
						sleep(200)
						bot_start()
					end
					if mobY2==943 then
						speak("躲避闪电2")
						jmp(0)
						ini_change("tobot_hit_range_right",3680)
						ini_change("tobot_hit_range_left",3750)
						ini_change("ban_hit_mob",1)
						sleep(200)
						bot_start()
					end
				end
				if gety()==943 and getx()<6000 and getx()>3750 then
					speak("禁止攻击")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
				if gety()==943 and getx()<=3750 and getx()>=3680 then
					ini_change("ban_hit_mob",0)
					ini_change("tobot_hit_range_right",3680)
					ini_change("tobot_hit_range_left",3750)
					local mobId1 = mob_obj_get('秘密森林召唤术士')
					local mobY1 = mob_obj_y(mobId1)
					local mobX1 = mob_obj_x(mobId1)
					local mobId2 = mob_obj_get('秘密森林战士')
					local mobY2 = mob_obj_y(mobId2)
					local mobX2 = mob_obj_x(mobId2)
					local mobId4 = mob_obj_get('??? ?')
					local mobx4 = mob_obj_x(mobId4)
					if mobY2~=943 and mobY1~=943 and mobY3~=943 then 
						speak("二层左边已清")
						ini_change("tobot_hit_range_right",32)
						ini_change("tobot_hit_range_left",99999)
						labelkuang=1
					end
					if labelkuang==1 and mobx4~=0 then --采集
						bot_stop()
						speak("采集魔心")
						useskill(43501018,1)
						gotocoordinate(1,mobx4,943)
						sleep(200)
						useskill(5000028,1)
						sleep(1000)
						useskill(5000028,1)
						ini_change("tobot_scriptbot",1)
						bot_start()
					end
				end
				if gety()==943 and getx()>=6000 then
					local mobId4 = mob_obj_get('??? ?')
					local mobx4 = mob_obj_x(mobId4)
					ini_change("ban_hit_mob",0)
					if mobx4~=0 then --采集
						bot_stop()
						speak("采集魔心")
						useskill(43501018,1)
						gotocoordinate(1,mobx4,943)
						sleep(200)
						useskill(5000028,1)
						sleep(1000)
						useskill(5000028,1)
						ini_change("tobot_scriptbot",1)
						bot_start()
					end
				end
				if gety()==1391 and getx()>=3700 then
					speak("禁止攻击")
					ini_change("tobot_hit_range_right",32)
					ini_change("tobot_hit_range_left",99999)
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
				if gety()==1391 and getx()<3700 then
					ini_change("ban_hit_mob",0)
					ini_change("tobot_hit_range_right",32)
					ini_change("tobot_hit_range_left",99999)
				end
				if (getmapid() == 37906) then
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3632302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3636302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C33322C313430372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313234372C313430372CB2BBB1E42C",0)
				end
			until(door_if(180,1391)==1)
			bot_start()
        end
		if (getmapid() == 37907) then  --修炼2			
			repeat
				sleep(200)
				if gety()==671 and getx()>=1792 and getx()<=2815 then
					speak("禁止攻击")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
				if (getmapid() == 37907) then
					script_txt_loaddata("D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3336302C3238372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3939302C3431352CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313538302C3534332CB2BBB1E42C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313630302C3534332CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313935302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323030302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323130302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323230302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323330302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323430302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323530302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323630302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323730302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323830302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323831352C3637312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343234302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343236302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343238302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333734302C3431352CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333030302C3534332CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343237302C3431352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343335312C3431352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343130302C3431352CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C353933362C3534332CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C353730302C313833392CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C343936302C313530342CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C333933362C313530342CD7F3C5DC2C0D0AD7F3CCF82CD3D2C5DCCAB12C313830302C313833392CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD3D2C5DCCAB12C3435302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C33322C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3130302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3230302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3330302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3430302C313833392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C343335312C3431352CD7F3C5DC2C",0)
				end
				if (getmapid() == 37908) then
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634302C313430372CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C323030300D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C33322C313430372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313234372C313430372CB2BBB1E42C",0)
				end
				if gety()==1839 and getx()>450 and getx()<=3300 then
					speak("禁止攻击")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
				if gety()==1839 and getx()>3300 then
					ini_change("ban_hit_mob",0)
				end
				if gety()==543 and getx()<5600 and getx()>4700  then
					local mobId1 = mob_obj_get('秘密森林战士')
					local mobY1 = mob_obj_y(mobId1)
					local mobX1 = mob_obj_x(mobId1)
					if mobY1==543 then
						speak("躲避闪电")
						jmp(0)
						ini_change("tobot_hit_range_right",4608)
						ini_change("tobot_hit_range_left",4700)
						ini_change("ban_hit_mob",1)
						sleep(200)
						bot_start()
					end
				end
				if gety()==543 and getx()<=4700 and getx()>=4608 then
					ini_change("ban_hit_mob",0)
					ini_change("tobot_hit_range_right",4608)
					ini_change("tobot_hit_range_left",4700)
					local mobId1 = mob_obj_get('秘密森林战士')
					local mobY1 = mob_obj_y(mobId1)
					local mobX1 = mob_obj_x(mobId1)
					if mobY1~=543 then
						speak("小范围秘密森林战士已清")
						ini_change("tobot_hit_range_right",32)
						ini_change("tobot_hit_range_left",99999)
					end
				end
				if gety()==543 and getx()>5600 then
					ini_change("ban_hit_mob",0)
				end
				if gety()==1839 and getx()>=32 and getx()<=450 and door_if(150,1839)==0 then
					ini_change("ban_hit_mob",0)
				end
				if door_if(150,1839)==1 then
					speak("门开了")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
			until(door_if(150,1839)==1)
			script_txt_loaddata("D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3336302C3238372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3939302C3431352CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313538302C3534332CB2BBB1E42C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313630302C3534332CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313935302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323030302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323130302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323230302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323330302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323430302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323530302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323630302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323730302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323830302C3637312CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323831352C3637312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343234302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343236302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343238302C3431352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333734302C3431352CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333030302C3534332CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343237302C3431352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343335312C3431352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343130302C3431352CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C353933362C3534332CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C353730302C313833392CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C343936302C313530342CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C333933362C313530342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3133302C313833392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135302C313833392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3137302C313833392CB2BBB1E42C0D0AD7F3CCF82CD3D2C5DCCAB12C313830302C313833392CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD3D2C5DCCAB12C3435302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C33322C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3130302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3230302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3330302C313833392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3430302C313833392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C343335312C3431352CD7F3C5DC2C",0)
			bot_start()
		end
		if (getmapid() == 37909) then
			repeat
				sleep(200)
				local mobId1 = mob_obj_get('雅典幻影术士')
				local mobY1 = mob_obj_y(mobId1)
				local mobId2 = mob_obj_get('秘密森林战士')
				local mobY2 = mob_obj_y(mobId2)
				local mobId3 = mob_obj_get('雅典刺客')
				local mobY3 = mob_obj_y(mobId3)
				local mobId5 = mob_obj_get('雅典幻影术士')
				local mobY5 = mob_obj_y(mobId5)
				local mobId4 = mob_obj_get('??? ?')
				local mobx4 = mob_obj_x(mobId4)
				if gety()==687 and mobY1==0 and mobx4~=0 then --采集
					bot_stop()
					speak("采集魔心")
					ini_change("ban_hit_mob",1)
					useskill(43501018,1)
					gotocoordinate(1,mobx4,687)
					sleep(200)
					useskill(5000028,1)
					sleep(1000)
					useskill(5000028,1)
					ini_change("ban_hit_mob",0)
					ini_change("tobot_scriptbot",1)
					bot_start()
				end
				if gety()==1839 and getx()>=3168 and getx()<3400 and  mobY2~=0 and mobY3~=0 and mobId5~=0 then 
					ini_change("tobot_hit_range_right",3168)
					ini_change("tobot_hit_range_left",3400)
					ini_change("ban_hit_mob",0)
				end
				if gety()==1839 and getx()>=3400 and  mobY2~=0 and mobY3~=0 and mobId5~=0 then 
					ini_change("tobot_hit_range_right",3168)
					ini_change("tobot_hit_range_left",3400)
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
				if gety()==1839 and getx()>=3400 and  mobY2~=1839 and mobY3~=1839 and mobId5~=1839 then 
					ini_change("tobot_hit_range_right",32)
					ini_change("tobot_hit_range_left",99999)
					bot_stop()
					jmp(2)
					sleep(900)
					jmp(2)
					sleep(900)
					jmp(2)
					sleep(900)
					bot_start()
				end
				if door_if(6150,1327)==1 then
					speak("门开了")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
					sleep(200)
					bot_start()
				end
			until(door_if(6150,1327)==1)
			bot_start()
		end
		if (getmapid() == 37910) then
			ini_change("ban_hit_mob",0)
			item_use(170191135)--世界树减伤药
			sleep(100)
			item_use(611113086)--最大吸红
			sleep(100)
			item_use(611113016)--三星芝士汤
			sleep(100)
			item_use(430453126)--星球坚不可摧
			sleep(100)
			useskill(43501022,1)
			repeat
				sleep(200)
				if gety()==1007 and door_if(930,1007)==1 then
					speak("门开了")
					ini_change("ban_hit_mob",1)
					sleep(200)
					bot_start()
				end
				if gety()==1775 and getx()>=32 and getx()<=767 then
					bot_start()
				end
				if gety()==1775 and getx()>=1152 and getx()<=3167 then
					bot_start()
				end
				local mobId = mob_obj_get('比尔布拉特')
				if mobId~=0 then
					ini_change("find_zhiding","比尔布拉特;冰冻地狱斗篷;火焰地狱斗篷;")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				else
					ini_change("find_is_zhiding",0)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				end
				if (getmapid() == 37911) then
					ini_change("find_zhiding","宝箱")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",1)
					ini_change("find_is_ewai",1)
					ini_change("tobot_scriptbot",0)
					speak("开启宝箱,60s后退出副本")
					sleep(60000)
					ini_change("tobot_scriptbot",1)
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3538302C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3630302C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3632302C313430372CB2BBB1E42C",0)
				end
			until(door_if(930,1007)==1 or getmapid() ~= 37910 )
			bot_start()
        end
		if (getmapid() == 37911) then
			ini_change("find_zhiding","宝箱")
			ini_change("find_is_zhiding",1)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			ini_change("tobot_scriptbot",0)
			speak("开启宝箱,60s后退出副本")
			sleep(60000)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3538302C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3630302C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3632302C313430372CB2BBB1E42C",0)
		end
    end
})