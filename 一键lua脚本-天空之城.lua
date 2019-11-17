check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "天空之城",
    mapCount = 5,
    planeId = 745,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {93002,93100,93101,93102,93103},
    overtime = 20, --超时时间，/分钟
    endMapIds = {93103}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538392C313437312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 天空之城	1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630382C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 天空之城	2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832322C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 天空之城	3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630382C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 天空之城	4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832322C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 天空之城	5
       "",
       -- 6
       "",
       -- 7
       "",
       -- 8
       "",
	   -- 9
	   "",
	   -- 10
	   "",
	   -- 11
	   "",
	   -- 12
	   "",
	   -- 13
	   "",
	   --  14
	   "",
	   --  15
	   "",
	   --  16
	   "",
	   -- 副本17
	   "",
	},
})