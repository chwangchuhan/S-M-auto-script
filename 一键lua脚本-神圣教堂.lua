check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "神秘教堂",
    mapCount = 1,
    planeId = 268,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {34801.0,34900,34901,34902,34903,34904,34905,34906,34907,34908,34909,34910,34911,34912,34913,34914},
    overtime = 90, --超时时间，/分钟
    endMapIds = {34511}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323134362C3339392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313936332C3339392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313233352C3339392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313037392C3339392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313537302C3339392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313539302C3339392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631302C3339392CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323030302C313437312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313230302C313130332CD3D2C5DC2C",
       -- 教堂	1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323936332C313435352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938332C313435352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030332C313435352CB2BBB1E42C",
       -- 教堂	2
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323837392C333033392CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C323735312C323434382CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C323833372C323331392CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313532372C323434372CD3D2C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C313630302C313830372CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0AD7F3CCF82CD7F3C5DCCAB12C3730342C313637392CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3336382C313432332CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CC9CFCCDDD7D32C3336382C313635302CD7F6C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3537342C323434372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C33322C323331392CD3D2C5DC2C0D0AD7F3CCF82CD3D2C5DCCAB12C3532322C313432332CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3330322C313035352CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3532382C3534332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3532382C313035352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313033302C3934332CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313730302C3934332CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313936382C3534332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930372C3534332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323931372C3534332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932372C3534332CB2BBB1E42C",
       -- 教堂	3
       "CFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3234302C3531312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133332C3531312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3738342C313135312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133332C313135312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3137362C313931392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133332C313931392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3538352E3737392C323433312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133332C323433312CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323832302C333033392CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323936302C323433312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323332302C313533352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323334302C313533352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323336302C313533352CB2BBB1E42C",
       -- 教堂	4
       "D7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C343734362C323532372CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C333630382C333033392CB2BBB1E42CCAB9D3C3BCBCC4DC2C393837393939390D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353937362C333033392CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C3432302C3738332CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3634312C3635352E2CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313835362C313239352CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323439352C3931312CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C343330302C3635352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C343634352C3339392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C363330302C3630372CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C353830302C3939312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C353230302C313131392CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C343238322C313234372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3534302C323132372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132312C333033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3131312C333033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130312C333033392CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C363030342C3836332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323735312C3738332CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323837352C3635352CD3D2C5DC2C",
       -- 教堂	5
       "C9CFCCF82CD7F326D3D2CAB12C323834312C333033392CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323834312C323733392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323834352C333033392CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323834352C323733392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323935322C323635352CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323935322C323335352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323935352C323635352CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323935352C323335352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323739302C323237312CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323739302C323037312CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323739352C323237312CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323739352C323037312CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323935322C323031352CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323935322C313831352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323935352C323031352CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323935352C313831352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323739312C313633312CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323739312C313433312CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323739352C313633312CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323739352C313433312CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323933362C313337352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323635302C313136372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3132302C323031352CD7F3C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323435332C323339392CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323435332C323139392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323435352C323339392CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C323435352C323139392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C323536372C323036332CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323536372C313736332CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323537302C323036332CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323537302C313736332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323233342C313539392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323131382C323031352CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3630362C3733352CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C313630372E32362C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932322C3733352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C34303030",
       -- 教堂	6
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3435302C3534332CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313334332C313138332CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323837392C313138332CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C343431352C313138332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C353935302C313535312CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C343637322C313830372CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C333030382C313830372CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313437322C313830372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3432302C323335312CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C313334332C323630372CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323837392C323630372CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C343534332C323630372CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C353331322C323630372CD7F3C5DC2C200D0AD7F3CCF82CD7F326D3D2CAB12C333634382C323630372CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323131322C323630372CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C3537362C323630372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C38302C323335312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C323335312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C323335312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C333033392CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333030372C323437392CD3D2C5DC0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C343637312C323437392CD3D2C5DC",
       -- 教堂	7
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323639312C333033392CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313834302C323433312CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323736382C313533352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C333133352C3633392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C343234302C3633392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C333533362C313035352CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C343234302C313438372CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C333533362C323033312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C343137362C323534332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363139302C333033392CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3534302C323633392CD7F3C5DC2C",
       -- 教堂	8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132362C333033392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237302C323336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363239302C323336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363331302C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3630302C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3630302C323336372CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3430352C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313030302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313430302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313830302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323230302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323630302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333230302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333830302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343230302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343830302C333033392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313636362C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323838372C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343935332C323336372CD3D2C5DC2C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3432302C323336372CB2BBB1E42C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3236372C3837392CB2BBB1E42C0D0ABDFBD6B9B4F2B9D62CD7F326D3D2CAB12C3339302C3837392CB2BBB1E42C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3538372C3837392CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313831322C3837392CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323937392C3837392CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333831332C3837392CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343939372C3837392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237322C3837392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353630362C3837392CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3539352C323336372CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C343936342C323336372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353637332C323336372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363336372C333033392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3636342C3837392CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C333835342C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323935392C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323931382C3837392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353632382C3837392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237352C3837392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363238362C3837392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363231372C3837392CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313736312C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323936372C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3631312C323336372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3638352C323336372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323331322C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323235302C333033392CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313132362C323535302CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313536342C323630302CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313536342C323634302CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313536342C323637302CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313536342C323730302CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313536342C323435302CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C343734382C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C343439302C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353033312C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353339382C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353538392C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363030362C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333534332C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333135352C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323139372C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323338382C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313738302C333033392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313534372C333033392CD7F3C5DC2C",
	   -- 教堂	9
	   "D4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3338352C333033392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313530302C333033392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C323530302C333033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3837322C333033392CD7F3C5DC2C",
	   -- 教堂	10
	   "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313233312CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C323536382C313233312CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C3633302C323238372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C333033392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323530372C333033392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C3130302C333033392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C3230302C333033392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C3330302C333033392CB2BBB1E42C",
	   -- 教堂	11
	   "C9CFCCF82CD7F326D3D2CAB12C3434382C323031352CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C3434382C313731352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C3435352C323031352CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C3435352C313731352CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313034312C313539392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930302C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932302C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934302C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323936302C3733352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938372C3733352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C3235342C323339392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C3235342C323139392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C3235392C323339392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C3235392C323139392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C39312C323031352CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C39312C313831352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C39362C323031352CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C39362C313831352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C3234352C313735392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C3234352C313535392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C3234392C313735392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C3234392C313535392CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C37362C313435352CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C37362C313235352CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C37392C313435352CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C37392C313235352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C37322C333033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C39302C333033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C333033392CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323632332C323036332CD3D2C5DC2C",
	   -- 教堂	12
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438352C313530332CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323632332C333033392CD7F3C5DC2C",
	   -- 教堂	13
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438352C313530332CD3D2C5DC2C",
	   -- 教堂	14
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438352C313530332CD3D2C5DC2C",
	   -- 教堂	15
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438352C313530332CD3D2C5DC2C",
	   -- 副本16
	   "",
	   -- 副本17
	   "",
	},
    onScriptRound = function () -- 副本每次切换地图回调
		if (getmapid() == 34905) then
		labeldoor=0
		labelfanhui=0
			repeat
				sleep(1000)
				if door_if(100,2351)==1 then
					labeldoor=1
				end
				if getx()>=5312 and getx()<=6207 and gety()==2607 and labelfanhui<7 then
					labelfanhui=labelfanhui+1
				end
				if (getx()>=2112 and getx()<=2879 and gety()==2607 and labelfanhui==3) or (getx()>=2112 and getx()<=2879 and gety()==2607 and labelfanhui==7 ) then
					bot_stop()
					sleep(500)
					gotocoordinate(1,2650,2607)
					sleep(500)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(0)
					sleep(500)
					bot_start()
				end
				if (getx()>=1472 and getx()<=2367 and gety()==1807 and labelfanhui==3)or (getx()>=1472 and getx()<=2367 and gety()==1807 and labelfanhui==7) then
					bot_stop()
					sleep(500)
					gotocoordinate(1,1750,1807)
					sleep(500)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(0)
					sleep(500)
					bot_start()
				end
				if getx()>=576 and getx()<=1343 and gety()==1183 and labelfanhui==3 then
					labelfanhui=4
				end
				if getx()>=576 and getx()<=1343 and gety()==1183 and labelfanhui==7 then
					labelfanhui=8
				end
			until(labeldoor==1)
        end
		if (getmapid() == 34907) then
           ini_change("ban_hit_mob",1)
		   ini_change("tobot_scriptbot",0)
		   bot_stop()
		   common.wearSudu()
		   sleep(1000)
		   ini_change("ban_hit_mob",1)
		   ini_change("tobot_scriptbot",1)
		   bot_start()
        end
		if (getmapid() == 34908) then
		   ini_change("tobot_scriptbot",0)
		   bot_stop()
		   common.wearGongji()
		   sleep(1000)
		   ini_change("ban_hit_mob",0)
		   ini_change("tobot_scriptbot",1)
		   bot_start()
		   
        end
		if (getmapid() == 34909) then
		   label=0
           ini_change("ban_hit_mob",1)
		   repeat
				sleep(100)
				if gety()>2288 and gety()<=3039 then
				ini_change("tobot_scriptbot",0)
				bot_stop()
				common.wearGongji()
				sleep(1000)
				ini_change("tobot_scriptbot",1)
				bot_start()
				label=1
				end
			until(label==1)
        end
    end
})