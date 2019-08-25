check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "世界之树",
    mapCount = 3,
    planeId = 155,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {28202.0,28300.0,28301.0,28302.0,28303.0,28304.0,28305.0,28306.0,28307.0,28308},
    overtime = 20, --超时时间，/分钟
    endMapIds = {28308}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323636362C3338332CD3D2C5DC2C20C3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3338332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3331392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031332C3338332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C3834372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C313339312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313339312CD3D2C5DC2C20C3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 副本1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038362C3632332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFDCAFD",
       -- 副本2
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313337302C313233312CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C3333392C3739392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313337382E30342C3630372CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323533332C3931312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313730352E332C3630372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323035352C3931312CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C313932392E33322C313233312CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323030302C313233312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313638372C3139312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD3D2C5DCCAB12C313838382C3233392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C313838382C3233392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD3D2C5DCCAB12C323230302C3238382CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313334352C3630372CD3D2C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C323730352C3436332CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313337352C313233312CB2BBB1E42C0D0A0D0A0D0A0D0A",
       -- 副本3
       "D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537302C313335392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537352C313335392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836302C313239352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836332C313239352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313134352C313233312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313135312C313233312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB1313436352C313136372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313437312C313136372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633342C313130332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537302C3638372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537352C3638372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836332C3630372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836302C3630372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313134352C3534332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313135312C3534332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313436352C3437392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313437312C3437392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313738352C3431352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313739312C3431352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631372C3431352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323433312C3335312CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323330302C3335312CD3D2C5DC2C",
       -- 副本4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039322C313037312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131322C313037312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037322C313037312CD3D2C5DC2C0D0A0D0A0D0A0D0A0D0A",
       -- 副本5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131342C3931312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 副本6
       "D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537302C313335392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537352C313335392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836302C313239352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836332C313239352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313134352C313233312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313135312C313233312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB1313436352C313136372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313437312C313136372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633342C313130332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537302C3638372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537352C3638372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836332C3630372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3836302C3630372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313134352C3534332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313135312C3534332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313436352C3437392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313437312C3437392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313738352C3431352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313739312C3431352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631372C3431352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323433312C3335312CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323330302C3335312CD3D2C5DC2C",
       -- 副本7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3730382C313334332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 副本8
       "D3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3630302C313334332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313137382C3739392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136382C3739392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135382C3739392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313139382C3739392CB2BBB1E42C",
	   -- 副本9
	   "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313437312C3833312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3833312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313238322C3833312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD2C",
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
		if (getmapid() == 28308) then
			while(true)
			do 
					if door_if(1282,831) == 1 then 
						bot_stop()--停止挂机--
						sleep(2000)
						plane(155)
						break
					end
			end
        end
    end
})