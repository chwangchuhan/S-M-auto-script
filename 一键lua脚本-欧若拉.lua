check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "欧若拉庭院",
    mapCount = 3,
    planeId = 257,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {33605.0,33700.0,33701.0,33702.0,33703.0,33704.0,33705.0,33706.0,33707.0,33708.0},
    overtime = 30, --超时时间，/分钟
    endMapIds = {33708.0}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934332C313437312CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313437312CD3D2C5DC2C",
       -- 副本1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313834322C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313832322C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313836322C3934332CB2BBB1E42C",
       -- 副本2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323830332C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323832332C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323738332C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323738372C3932372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323830372C3932372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323736372C3932372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323738312C313432332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323830312C313432332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323736312C313432332CB2BBB1E42C",
       -- 副本3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3430362C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3338362C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3336362C3934332CB2BBB1E42C2C",
       -- 副本4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323734332C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323738332C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323736332C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323738312C313432332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323736312C313432332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323830312C313432332CB2BBB1E42C",
       -- 副本5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832382C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3834382C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3830382C3934332CB2BBB1E42C",
       -- 副本6
       "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313539372C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313537372C3934332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313631372C3934332CB2BBB1E42C",
       -- 副本7
       "",
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
})