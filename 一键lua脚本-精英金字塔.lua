check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "金字塔的秘密",
    mapCount = 1,
    planeId = 83500,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,83500,83501,83502,83503,83504,83505,83506,83507},
    overtime = 30, --超时时间，/分钟
    endMapIds = {83505,83506,83507}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_giveitemif=1,
		tobot_script_x_distance = 40,
		tobot_script_y_distance = 20,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    isLuckyDog = true,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 金字塔进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3635352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313338302C3635352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313432302C3635352CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C343030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313230302C3635352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313630302C3635352CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3633342E3331312C313335392CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3633342E3331312C313335392CD3D2C5DC2C",
       -- 副本1
       "CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3732302E34382C3834372E3633372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3732302E34382C3834372E3633372CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3732302E34382C3835302CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3439362C313135312E33372CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3439362C313135352CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3933382E32362C313435352E39382CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3933382E32362C313435352E39382CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313235302E30352C313335392E38362CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313235302E30352C313335392E38362CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323830302C313435352E34362CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323830302C313435352E34362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313930302C313135312E37382CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323230302C313135312E37382CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333133322E39312C3834372E3039372CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C333133322E39312C3834372E3039372CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323836342E38392C3534332E3934322CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323836342E38392C3534332E3934322CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323836342E38392C3534352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323439362E33332C3834372E3533322CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323531362E33332C3834372E3533322CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323437362E33332C3834372E3533322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323039302E36392C3834372CB2BBB1E42C",
       -- 副本2
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3330342E35392C3436332E36372CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3330342E35392C3437302CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3330342E35392C3436332E36372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3330342E35392C3733352E30372CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3330342E35392C3734302CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3330342E35392C3733352E30372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3532382E3234312C313032332E30322CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CD7F3C5DCCAB12C3532382E3234312C313033302CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3532382E3234312C313032332E30322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3730352E3633372C313332372E35312CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3730352E3633372C313332372E35312CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323139322E31352C313435352E382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323139322E31352C313435352E382CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323738342E35332C313032342E38342CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323837392C313032342E38342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323538352E37392C3735312E3636382CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323536352E37392C3735312E3636382CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323630352E37392C3735312E3636382CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323830302C3735312CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323830302C3735352CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323537362C313032332CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323537362C313033302CD3D2C5DC2C",
       -- 副本3
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3435302C3936302CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3435302C3936302CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C3737352E3530392C313334332E35362CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3737302E3530392C313334332E35362CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3931322C313037312CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3931322C313037352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3931322C313037312E362CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C313231362C313437312E30342CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313535302C313037312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313535322C313037312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313535342C313037312CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C313535322C313037352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313535322C313037312CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323532302C313139392E33322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323532302C313139392E33322CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323535302C313139392E33322CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323230302C313332372CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323334372E39342C3436332E3637372CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323334372E39342C3437302CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323334372E39342C3436332E3637372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323735342E32332C3736372E3836372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323737342E32332C3736372E3836372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323733342E32332C3736372E3836372CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313138302C313334332CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313134302C313334332CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C313835352C313437312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313835352C313437312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313538302C3534332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313530302C3534332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313532302C3534332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313534302C3534332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313536302C3534332CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323232302C3736372CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CC9CFCCDDD7D32C313535322C3630302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C313535322C3730302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C313535322C3735302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C313535322C3830302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C313535322C3930302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C39383739393939",
       -- 副本4
       "CFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3532382C3736372CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3532382C3737352CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3533302E39352C3736372E39362CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3239392E3935392C313033392E322CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3239392E3935392C313034352CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3239392E3935392C313033392E322CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3439362E3839392C313331312E33342CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3439362E3839392C313331352CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3439362E3839392C313331312E33342CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3635362C313538332CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3635362C313539302CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3635362E3239382C313538332E372CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3433322C323331392CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3433322C323331392CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3433322C323332352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3636302C323331392CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313238382E33322C323732302E36352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313238382E33322C323732302E36352CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C313336362E32342C323434372E36392CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313336362E32342C323434372E36392CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C313631382E33332C323134332E37372CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313631382E33332C323134332E37372CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C313337352C313835352E31332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313232302E33372C313835352E31332CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C313539392C313034302CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313730302C3736372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323535302C3736372CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323434382C3736372CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323434382C3737302CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323530352E33342C3736372E3739372CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323530352E33342C3736372E3739372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323038332E32362C313930332E332CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323631372E31382C313930332E332CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323631372E31382C313930382CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323631372E31382C313930332E332CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323736382E31322C323137352E35322CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323736382E31322C323138302CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323736382E31322C323137352E35322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323939352E36372C323731392E30372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937352E36372C323731392E30372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031352E36372C323731392E30372CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313539392E372C313538332E30312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313539392E372C313538332E30312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 副本5
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3336382E31352C3839352E3235392CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3336382E31352C3930302CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3336382E31352C3839352E3235392CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3435302E39342C313139392E37392CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3435302E39342C313139392E37392CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313835372C313435352CB2BBB1E42C0D0AD3D2CCF82CD7F3C5DCCAB12C313830302C313435352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F3C5DCCAB12C333130302C313139392E34352CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333130302C313139392E34352CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323830302C3839352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323830332E34382C3839352E3234392CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323039362E38382C3335312E35352CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323039362E38382C3335352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323039362E38382C3335312E35352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738392E32312C3632332E3433332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313736392E32312C3632332E3433332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830392E32312C3632332E3433332CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323230302C313139392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323135302C313139392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323130302C313139392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323035302C313139392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323030302C313139392CD3D2C5DC2C",
       -- 副本6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313736392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
       -- 副本7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313736392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
       -- 副本8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313736392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3830300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830392E32312C3632332E3433332CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C383030",
    },
	onScriptRound = function () -- 副本每次切换地图回调
        if (getmapid() == 83503) then
			labelnext=0
			labellasttime=gettime(3)
			labelnowtime=0
		   repeat
				sleep(200)
				if getx()>=2528 and getx()<=3167 and gety()==2719 and mob_if('美杜沙真身')==0 and door_if(2995,2719)==0 then
					jmp(0)
					sleep(800)
					jmp(0)
					sleep(800)
					jmp(0)
					sleep(800)
					jmp(0)
					sleep(800)
					jmp(0)
					sleep(800)
				end
				if getmapid() == 83504 then
					script_txt_loaddata("CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3336382E31352C3839352E3235392CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C3336382E31352C3930302CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3336382E31352C3839352E3235392CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3435302E39342C313139392E37392CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3435302E39342C313139392E37392CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313835372C313435352CB2BBB1E42C0D0AD3D2CCF82CD7F3C5DCCAB12C313835372C313435352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F3C5DCCAB12C333130302C313139392E34352CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333130302C313139392E34352CB2BBB1E42C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323830302C3839352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323830332E34382C3839352E3234392CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323039362E38382C3335312E35352CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323039362E38382C3335352CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323039362E38382C3335312E35352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738392E32312C3632332E3433332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313736392E32312C3632332E3433332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830392E32312C3632332E3433332CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323230302C313139392CD3D2C5DC2C",0)
					break
				end
				labelnowtime=gettime(3)
				if labelnowtime - labellasttime ==10 or labelnowtime - labellasttime ==-50 then
					speak("超时10分钟，10s退出副本")
					sleep(10000)
					plane(70)
				end
		   until(door_if(2995,2719)==1 or getmapid() ~= 83503)
        end
    end
})