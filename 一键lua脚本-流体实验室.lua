check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "流体实验室",
    mapCount = 1,
    planeId = 19865,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {86403,86500,86501,86502,86503,86504,86505,86506,86507,86508,86509,86510,86511,86512,86513,86514},
    overtime = 30, --超时时间，/分钟
    endMapIds = {86514}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323332302C313532302CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323334302C313532302CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323336302C313532302CB2BBB1E42C",
       -- 副本1
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3139332E3433372C313530342E33322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3738312E31362C313131392E33322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335382E35322C3338332E3538312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313233322E39322C3338332E3538312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323336372E34322C313236332E34322CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323439352E32362C313133352E332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323735312E36312C3837392E3138312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323632332E34352C313030372E31382CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333133302E32322C3735312E3534312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131332E34342C3139312E322CD3D2C5DC2C",
       -- 副本2
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3139332E3433372C313530342E33322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3738312E31362C313131392E33322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335382E35322C3338332E3538312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313233322E39322C3338332E3538312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323336372E34322C313236332E34322CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323439352E32362C313133352E332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323735312E36312C3837392E3138312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323632332E34352C313030372E31382CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333133302E32322C3735312E3534312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131332E34342C3139312E322CD3D2C5DC2C",
       -- 副本3
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3139332E3433372C313530342E33322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3738312E31362C313131392E33322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335382E35322C3338332E3538312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313233322E39322C3338332E3538312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323336372E34322C313236332E34322CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323439352E32362C313133352E332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323735312E36312C3837392E3138312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323632332E34352C313030372E31382CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333133302E32322C3735312E3534312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131332E34342C3139312E322CD3D2C5DC2C",
       -- 副本4
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3534322E3038312C313530342E37382CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3234302C3932372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323933302E30322C3932372E3833362CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323631352E332C313530342E33322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038312E352C313530342E36372CD3D2C5DC2C",
       -- 副本5
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3534322E3038312C313530342E37382CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3234302C3932372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323933302E30322C3932372E3833362CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323631352E332C313530342E33322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038312E352C313530342E36372CD3D2C5DC2C",
       -- 副本6
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3534322E3038312C313530342E37382CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3234302C3932372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323933302E30322C3932372E3833362CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323631352E332C313530342E33322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038312E352C313530342E36372CD3D2C5DC2C",
       -- 副本7
       "C9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302E372C3637312E39332CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3637312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C38302C313138332CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323736322E34322C313530342E38382CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C333039332E34342C3939312E3332362CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3238372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532332E37362C3238372E3832382CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323730302C3939312CD7F3C5DC2C",
       -- 副本8
       "C9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302E372C3637312E39332CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3637312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C38302C313138332CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323736322E34322C313530342E38382CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C333039332E34342C3939312E3332362CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3238372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532332E37362C3238372E3832382CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323730302C3939312CD7F3C5DC2C",
	   -- 副本9
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302E372C3637312E39332CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3637312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C38302C313138332CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323736322E34322C313530342E38382CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C333039332E34342C3939312E3332362CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3238372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532332E37362C3238372E3832382CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323730302C3939312CD7F3C5DC2C",
	   -- 副本10
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C313530342CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C3939312CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3637312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C3335312E3432322CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313231332E30322C3638382E3930322CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3536352C3335322E3932332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138352C3939322E3838332CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3433302C3939322E32322CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3939322CD3D2C5DC2C",
	   -- 副本11
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C313530342CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C3939312CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3637312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C3335312E3432322CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313231332E30322C3638382E3930322CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3536352C3335322E3932332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138352C3939322E3838332CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3433302C3939322E32322CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3939322CD3D2C5DC2C",
	   -- 副本12
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C313530342CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C3939312CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3637312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C3335312E3432322CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313231332E30322C3638382E3930322CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3536352C3335322E3932332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138352C3939322E3838332CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3433302C3939322E32322CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3939322CD3D2C5DC2C",
	   -- 副本13
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313539392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633392E33382C313530342E37322CB2BBB1E42C",
	   -- 副本14
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313539392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633392E33382C313530342E37322CB2BBB1E42C",
	   -- 副本15
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313539392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633392E33382C313530342E37322CB2BBB1E42C",
	   -- 副本16
	   "",
	   -- 副本17
	   "",
	},
	 onScriptRound = function () -- 副本每次切换地图回调
		if (getmapid() == 86512) then
			ini_change("find_is_youhao",1)
        end
		if (getmapid() == 86513) then
			ini_change("find_is_youhao",0)
        end
		if (getmapid() == 86514) then
			ini_change("find_is_youhao",0)
        end
    end
})