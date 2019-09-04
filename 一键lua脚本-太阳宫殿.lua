check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "太阳宫殿(超越)",
    mapCount = 3,
    planeId = 273,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {35402.0,35600.0,35601.0,35602.0,35603.0,35604.0,35605.0},
    overtime = 90, --超时时间，/分钟
    endMapIds = {35605}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323933362C3338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323931362C3338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935362C3338332CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3730332C313435352CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C313832342C313435352CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323731312C313435352CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C33322C313435352CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3436392C313435352CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3537392C3637312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323633382C3338332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323634362C3338332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323539322C3338332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313535302C3338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937352E36372C323731392E30372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031352E36372C323731392E30372CB2BBB1E42C",
       -- 宫殿1
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3936302C3836332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313437312C3836332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313037312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313337352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313337352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3138302C313337352CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3138302C313337352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3335312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039322C3335312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131322C3335312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037322C3335312CD3D2C5DC2C",
       -- 宫殿2
       "D3D2CCF82CD3D2C5DCCAB12C333136372C313337352CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C313337352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3135322C3731392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3133322C3731392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3131302C3731392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C37382C3731392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C34352C3731392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039322C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131322C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037322C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035322C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333033322C3630372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3630372CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313630302C3630372CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C313630302C3630372CD7F3C5DC2C",
       -- 宫殿3
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3630372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031372C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333033372C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035352C3630372CD3D2C5DC2C0D0A",
       -- 宫殿4
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C34372C313835352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3730332C313835352CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3230302C313835352CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3930302C3730332CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3839302C3730332CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3931302C3730332CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3930302C3730332CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3839302C3730332CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3838302C3730332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363034372C3833312CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C353138342C3833312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333339322C3730332CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323035362C3336372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313231362C3336372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323030302C3336372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363034372C3333352CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C353234382C3333352CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C343434342C3230372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313539392C313334332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313334332CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3230302C313334332CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3439362C313334332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313030302C3730332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313230302C3730332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3730332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323231322C3935392CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313437322C3935392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333131382C313334332CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333131382C313334332CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333035362C313334332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333436392C3232332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333437392C3232332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333436302C3232332CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C333533362C3730332CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323132342C3632332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C343431352C3730332CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333335382C3232332CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3231312C313835352CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3333332C313835352CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3230312C313835352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C343431352C3730332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C333330302C3632332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C353430302C3833312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C353630302C3333352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313430302C3336372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C333830302C3730332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 宫殿5
       "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3933362C3739392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3935362C3739392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3934362C3739392CD3D2C5DC2C0D0A",
       -- 宫殿6
       "",
       -- 7
       "",
       -- 8
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
		if (getmapid() == 35603) then
            useskill(43501018,1)
			ini_change("ban_hit_mob",1)--禁止攻击--
        end
		if (getmapid() == 35604) then
			item_use(170191135)--世界树减伤药
			sleep(100)
			item_use(611113016)--三星芝士汤
			sleep(100)
			--item_use(430453126)--星球坚不可摧
        end
		if (getmapid() == 35605) then
            --bot_stop()
			--local f = dofile(path_scripts.."S-M-auto-script\\config\\掉落装备.lua")
			--bot_start()
			sleep(4000)
			--local f = dofile(path_scripts.."S-M-auto-script\\config\\战斗装备.lua")
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3933362C3739392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3935362C3739392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3934362C3739392CD3D2C5DC2C0D0A",0)
        end
    end
})