check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "月华苑",
    mapCount = 3,
    planeId = 200,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {32204.0,32300,32301,32302,32303,32304,32305,32306,32307},
    overtime = 20, --超时时间，/分钟
    endMapIds = {32307}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "D7F3CCF82CD7F326D3D2CAB12C3434382E33332C313239352CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3137362E362C313033392E382CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3139362E362C313033392E382CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3231362E362C313033392E382CD3D2C5DC",
       -- 副本1
       "",
       -- 副本2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3439322E3235362C313332372E30382CB2BBB1E4",
       -- 副本3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313037362E35382C313332372E30382CB2BBB1E4",
       -- 副本4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631312E35332C313332372E30382CB2BBB1E4",
       -- 副本5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323133382E32352C313332372E30382CD7F3C5DC",
       -- 副本6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323638312E34332C313332372E30382CB2BBB1E4",
       -- 副本7
       "D3D2CCF82CD3D2C5DCCAB12C3135352E36392C313339312E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3934382E3231322C313032332E35342CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C3730302E3137312C313139392E322CD7F3C5DC0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313132332E33312C3834372E3834322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323032392E39392C3834372E3834322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323939312E38352C313339312E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323238362E31392C313032332E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD3D2C5DCCAB12C323238362E31392C313032332E31322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313535392E332C3834372E3234332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313535392E332C3834372E3234332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0A",
       -- 副本8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3731342E30362C3637312E30382CD3D2C5DC",
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