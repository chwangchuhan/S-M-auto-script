check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "龙皇殿",
    mapCount = 3,
    planeId = 201,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {32203,32400,32401,32402,32403,32404,32405,32406,32407,32408,32409,32410,32411,32412},
    overtime = 40, --超时时间，/分钟
    endMapIds = {32412}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_giveitemif=1, 
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323132392C313337352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313932302E30342C313337352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323433312E39312C313337352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 龙皇殿1
       "D7F3CCF82CD3D2C5DCCAB12C323331322C313131312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3133352C3736372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3134352C3736372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3136352C3736372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3138352C3736372CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313734352E30332C3736372E30382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333033352C3736372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333034372C3736372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036312C3736372CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323430302C313331312CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323239312C313331312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333032332C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333034332C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036332C313331312CD7F3C5DC2C",
       -- 龙皇殿2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135322C3735312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035362C3735312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3436322C313239352CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3234372C313239352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032362E352C313239352E30382CD7F3C5DC",
       -- 龙皇殿3
       "C9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323830302C313238302CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323531322C313130342CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C333032342C3931322CD7F3C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323634302C3732302CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C333032342C3532382CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323530302C3333352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3238362C3735312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737392C3839352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3431362C313237392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313337312C313237392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430392C313237392CD3D2C5DC2C",
       -- 龙皇殿4
       "D3D2CCF82CD7F326D3D2CAB12C3439312C3935352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3735312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C313030372C3735312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034332C313331312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031352C313331312CD3D2C5DC2C",
       -- 龙皇殿5
       "D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313135312C313038302CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C333135302C313337352CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C333135302C3130302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C343031392C3933312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C363135382C313337352CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C363135382C3330302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363138302C3632332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363231372C3632332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363235332C3632332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363239302C3632332CD7F3C5DC2C",
       -- 龙皇殿6
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313331372C313233312CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313331372C3135302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323039332C3538382CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C343932372C313233312CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C353035392C3931322CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363037362C313032332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363131332C313032332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363134392C313032332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363138362C313031332CD7F3C5DC2C",
       -- 龙皇殿7
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C313239352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036302C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037392C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3434372CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3733392C3634332CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3738382C3639322CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C3837392CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313738302C3837392CD7F3C5DC2C",
       -- 龙皇殿8
       "D7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313439302C3837392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3836382C3434372CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313537362C3434372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938352C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035332C3434372CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C3836332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3535382C3439322CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323338302E33372C313236332E33342CD3D2C5DC2C",
	   -- 龙皇殿9
	   "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313237392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313837382C313237392CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323735352C313237392CD3D2C5DC2C",
	   -- 龙皇殿10
	   "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323134312C313339312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323033392C3834372CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313539392C313339312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313530322C3735312CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C323631382C313339312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323734352C3931312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323334362C3931312CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C313438352C313035352CB2BBB1E40D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323638372C313339312CB2BBB1E40D0AC9CFCCF82CD7F326D3D2CAB12C3639302C313339312CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3834302C313138332CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3835302C313138332CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3932372C3935392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C333831363030370D0AC9CFCCF82CD7F326D3D2CAB12C313632302C3735312CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313632302C3635302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313639372C3635302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839322C3839392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839352C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838352C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323836352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323836302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323834352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323834302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323833352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323832392C3931312CB2BBB1E42C",
	   -- 龙皇殿11
	   "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3634362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3130300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3633362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3130300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3632362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3130300D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3833312CD3D2C5DC2C",
	   -- 龙皇殿12a
	   "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3634362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3633362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3632362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3833312CD3D2C5DC2C",
	   -- 龙皇殿12b 14
	   "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3534322C3833312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3635392C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634392C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3633392C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C3939393030330D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303130370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303130370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363830370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363830370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333730370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333730370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333230360D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333230360D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C33383134333037",
	   --  15
	   "",
	   --  16
	   "",
	   -- 副本17
	   "",
	},
	onScriptRound = function () -- 副本每次切换地图回调
		if (getmapid() == 32402) then
			repeat
				sleep(200)
				local mobId = mob_obj_get('龙皇殿的机动野兽兵')
				if mobId~=0 then
					ini_change("find_zhiding","龙皇殿的机动野兽兵")
					ini_change("find_is_zhiding",1)
				else
					ini_change("find_is_zhiding",0)
				end
			until(door_if(1390,1279)==1)
		end
		if (getmapid() == 32409) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_hit_range_max",300)
		end
		if (getmapid() == 32410) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_hit_range_max",280)
		end
		if (getmapid() == 32411) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_hit_range_max",280)	
		end
		if (getmapid() == 32412) then
			ini_change("tobot_hit_range_top",150)
		end
	end
})