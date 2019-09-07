check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "巧克力花园(超越)",
    mapCount = 15,
    planeId = 269,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {18403,35005,35000,35001,35002,35003,35004,35006},
    overtime = 15, --超时时间，/分钟
    endMapIds = {35006}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3331352C3932372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3237302C3932372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3738332C3932372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3730302C3932372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3534302C3932372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3532302C3932372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3536302C3932372CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3233352C313837322CD7F3C5DC2C",
       -- 副本1
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313437312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313437322C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313435322C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313439322C313437312CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C313030302C313437312CB2BBB1E42CCAB9D3C3BCBCC4DC2C33383136303034",
       -- 巧克力1	2
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313437312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C3934332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133342C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333136372C313437312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C333136372C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323533302C313133342CD3D0C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323533302C313133342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3330382C3934332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323935392C313437312CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323935392C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323536312C313135312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323536312C313135312CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323930302C313032332CD3D2C5DC2C0D0AD7F3CCF82CD3D2C5DCCAB12C333030302C313032332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313730302C3730332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323634342C3733352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323134362C313139392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3239332C3934332CD3D2C5DC2C",
       -- 巧克力2	3
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313437312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323632372C313133342CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323632372C313133342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3330382C3934332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323737312C313437322CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323737312C313437322CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3631332C313139392CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3631332C313139392CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3536392C313139392CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3536392C313139392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C313437312CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323931392C313437312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313734392C3833312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3936302C313133352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3936302C313133352CD3D2C5DC2C0D0A",
       -- 巧克力3	4
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313437312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313739372C3833312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C32363030202C313437312CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323630302C313437312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323535302C313231352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323635302C313231352CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323630302C313231352CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323630302C313231352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313336302C313138332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313536372C313138332CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C313536372C313138332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3534332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3633392CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313435302C3531312CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C313435302C3531312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133342C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3638382C3637312CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3638382C3637312CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323230342C3837392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323830342C3837392CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323430342C3837392CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323430342C3837392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3736372C3637312CD7F3C5DC2C0D0A0D0A",
       -- 巧克力4	5
       "D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3935312C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C33322C313437312CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C313437312CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3736372C313138332CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3736372C313138332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313038372C313131392CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313030302C313131392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313032332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313635302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538302C313437312CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323434382C313135312CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323434382C313135312CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323235302C313135312CD3D2C5DC2C",
       -- 巧克力5	6
       "C9CFCCF82CD7F3C5DCCAB12C3930352C313437312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3930352C313437312CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3438302C313131392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3438302C313131392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313430302C3833312CD3D2C5DC0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313530302C3833312CD3D2C5DC0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323232342C3935392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323232342C3935392CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CD3D2C5DCCAB12C323232342C313032342CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3534332C3630372CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3534332C3630372CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3633392C3534332CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3633392C3534332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3530312C3836332CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3530312C3836332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313635302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538302C313437312CB2BBB1E42C",
       -- 奖励	7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313233302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313231302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313235302C313437312CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3930302C313437312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030340D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3930302C313437312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363030340D0A0D0A",
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
		if (getmapid() == 35005) then
			item_use(430453149)--古语
        end
		if (getmapid() == 35002) then
			repeat
				sleep(100)
				if getx()>2550 and getx()<2650 and gety()==1215 then
					gotocoordinate(1,2600,1215)
					bot_stop()
					gotocoordinate(1,2600,1215)
					ini_change("tobot_scriptbot",0)
					gotocoordinate(1,2600,1215)
					ini_change("ban_hit_mob",1)
					gotocoordinate(1,2600,1215)
					bot_stop()
					sleep(500)
					jmp(1)
					sleep(1000)
					ini_change("tobot_scriptbot",1)
					ini_change("ban_hit_mob",0)
					bot_start()
				end
				if gety()==1471 then
					ini_change("tobot_scriptbot",1)
					ini_change("ban_hit_mob",0)
					bot_start()
				end
				if (getmapid() == 35003) then
					script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3935312C313437312CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C33322C313437312CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C313437312CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3736372C313138332CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3736372C313138332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313038372C313131392CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313030302C313131392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313032332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133342C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313635302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630302C313437312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538302C313437312CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323434382C313135312CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323434382C313135312CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323235302C313135312CD3D2C5DC2C",0)
					break
				end
			until(door_if(3104,1471)==1)
        end
    end
})