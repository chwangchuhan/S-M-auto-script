check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "太阳神地下祭坛(超越)",
    mapCount = 1,
    planeId = 274,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {35404.0,35700,35701,35702,35703,35704,35705,35706,35707,35708,35709,35710,35711},
    overtime = 90, --超时时间，/分钟
    endMapIds = {35710,35711}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323936302C313035352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938302C313035352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030302C313035352CD7F3C5DC2C",
       -- 祭坛1
       "D6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313339382C313433392CB2BBB1E42CCAB9D3C3BCBCC4DC2C353030303030380D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313230302C313433392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C313530302C313433392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 祭坛2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3631382C333030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C333030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C333030372CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323130302C313332372CD3D2C5DC2C0D0AD7F3CCF828B6E0B6CECCF8292CD7F326D3D2CAB12C3835382E3230312C313530302CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3130302E30342C3739392E3131392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3130302E30342C3739392E3131392CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313237392E33342C313731312E39362CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AC9CFCCF82CD7F326D3D2CAB12C33322C333030372E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C323636352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313232322E342C323335312E32342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313034342E37342C323335312E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 祭坛3
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323838302C333030372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333034342C333030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C333030372CD3D2C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C313835362C323537352CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C3231302C323139312CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3231302C313835352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323637342C313535312CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C333136372C313133342CD3D2C5DC2C0D0AD7F3CCF82CD3D2C5DCCAB12C313437322C323331392CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C33322C313930302CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C3938372C313637392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323539392C313535312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323635392C313535312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323631342C313535312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323632392C313535312CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C313737322C313535312CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333030302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333032302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333034302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333036302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333038302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333130302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333132302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333134302C333030372CD7F3C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C333136372C333030372CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C323830302C333030372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C323730302C333030372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C323630302C333030372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C323430302C333030372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C323230302C333030372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C323030302C333030372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313530302C333030372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313030302C333030372CB2BBB1E42C",
       -- 祭坛4
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3232302C313133352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3335302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3231302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3232302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3234302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3236302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3238302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3330302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3332302C313133352CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3334302C313133352CD3D2C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3630302C313133352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3535302C313133352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3530302C313133352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3435302C313133352CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3430302C313133352CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323838302C333030372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333034342C333030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C333030372CD3D2C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C313835362C323537352CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C3836342C323331392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C323139312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323633382C313535312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031372C313133352CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3330302C3834302CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3330302C3730302CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3330302C3530302CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C313039302C313133352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323839352C313133352CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C313932302C313133352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030322C313133352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937322C313133352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934322C313133352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C33322C3738302CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323430322C333030372CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C333135322C323638362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631352C323437392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313537302C323437392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313637352C323437392CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313835352C323437392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938372C333030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333033322C333030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935372C333030372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313133352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313231352E36312C313133352E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313334312E32352C313030372E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 祭坛5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3937382C313433392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3333342C313433392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313539392C313433392CD7F3C5DC2C",
       -- 祭坛6
       "D3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3530382C3534332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323536372C313332372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313332372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3730372C313332372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323731372C3534332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938372C3534332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031372C3534332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937322C3534332CD3D2C5DC2C",
       -- 7
       "D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3833312C3339392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3339392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3131322C3339392CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3131322C313136372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3131322C313830372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3131322C323434372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313230302C3339392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313230302C313136372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313230302C313830372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313230302C323434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313139352C333030372CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3530302C3930302CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3631322C333030372CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3830332C333030372CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3833312C333030372CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3733362C333030372CD3D2C5DC2C0D0AD3D2C7E1CCF82BC5C0CCDDD7D32CD7F326D3D2CAB12C3530302C323235302CD3D2C5DC2C0D0AD3D2C7E1CCF82BC5C0CCDDD7D32CD7F326D3D2CAB12C3530302C313037352CD3D2C5DC2C0D0AD3D2C7E1CCF82BC5C0CCDDD7D32CD7F326D3D2CAB12C3530302C313430302CD3D2C5DC2C0D0AD3D2C7E1CCF82BC5C0CCDDD7D32CD7F326D3D2CAB12C3530302C313830302CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3633382C333030372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3434382C333030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313136372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3139312C313136372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3139312C313830372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313830372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3139312C323434372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C323434372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3139312C333030372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C333030372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130382C333030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C38322C333030372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313437312C3339392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313038382C3339392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313331312C313136372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313035362C313136372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313035362C313830372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313331312C313830372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313331312C323434372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313035362C323434372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313038382C333030372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323139302C323139312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323139392C323139312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323137322C323139312CB2BBB1E42C0D0AD3D2CCF82BBDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3833312C333030372CD3D2C5DC2C0D0AD7F3C7E1CCF82BC5C0CCDDD7D32CD7F326D3D2CAB12C3833312C323638302CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323636392C333030372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313630302C333030372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C333035302C323735312CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C333037352C3235352CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C323238382C3339392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323738332C3339392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323834332C3235352CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323838302E34322C3630372E342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C31383031333039",
       -- 8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3439352C333030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3535342C333030372CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C3932382C313731312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C333030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313231352C333030372CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313130302C3638392CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323430302C3533352CD3D2C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C323834382C3534332CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C323237312C313332372CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3331392C3739392CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323237312C323039352CD7F3C5DC2C",
	   -- 副本进右9
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323539392C333030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323433322C3535392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3535392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031372C333030372CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333035362C3535392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313139392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323433322C313139392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323733362C313139392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323433322C313833392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313833392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C333035362C313833392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323739392C323437392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313937362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313937362CD7F3C5DC2C",
	   -- 副本10
	   "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3439362C3535392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3337342C333030372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3137362C3535392CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C3130362C3430302CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3234302C313139392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3532382C313833392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3133302C323437392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3538392C313538332CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3439362C3535392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3439362C3535392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313436372C333030372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323530372C313538332CD7F3C5DC2C0D0A",
	   -- 副本11
	   "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C333030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C333030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313432302E36342C333030372E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
	   -- 副本12
	   "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C333030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C333030372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313432302E36342C333030372E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
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
        if (getmapid() == 35404) then
            ini_change("ban_hit_mob",0)
        end
		if (getmapid() == 35706) then --祭坛7  跳操作
			label=0
            repeat
				if getx()==3050 and gety()==1700 label<7 then
				speak("跳6次")
				label=label+1		
				end
				if label==6 and getx()==3080 and gety()==2751 then
					bot_stop()
					jmp(1)
					jmp(1)
					jmp(1)
					jmp(1)
					jmp(1)
					jmp(1)
					jmp(1)
					jmp(1)
					jmp(1)
				end
				if getx()==3080 and gety()==225 then
					jmp(0)
					bot_start()
					return
				end
			until (getmapid() ~= 35706)
        end
		if (getmapid() == 35708) then   --祭坛9  切换门
            repeat
				if getx()==3050 and gety()==1700 then  --右边底门
				script_txt_loaddata("")	  --切进左边
				end
				if getx()==3050 and gety()==1700 then  --左边底门
				script_txt_loaddata("")	  --切进中间
				end
			until (getmapid() ~= 35708)
        end
    end
})