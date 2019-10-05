check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "吉恩蒂亚仓库",
    mapCount = 3,
    planeId = 186,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {28600.0, 58500.0, 58501.0, 58502.0, 58503.0, 58504.0, 58505.0},
    overtime = 10, --超时时间，/分钟
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
        -- 大厅
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313832322E36362C3635362E34382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3639302E3039342C3637312E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313833382E30392C313331322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313630392E33372C313331322E32382CD3D2C5DC2CCAB9D3C3B7C9BBFA2C3138360D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313132302E37322C3635362E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313132302E37322C3635362E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
        -- 1
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3734362C3638372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313430382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313430382CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323938362C313430382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130312C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333134392C3638372CB2BBB1E42C",
        -- 2
       "D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3733362C3531312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313339322CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313339322CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323332312C313339322CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323434352C3833322CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323035362C3833312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132332C3531312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C3531312CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C323239372C3531312CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3531312CD3D2C5DC2C",
        -- 3
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313734352C3333352CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3638382C3333352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313231352C3834372CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3430302C3834372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313339322CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3434372C313339322CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C313732372C3635352CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3634302CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323534342C3633392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333030372C3333352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313835362C3437392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323237322C313030372CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323736382C313030372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3939322C313339322CD3D2C5DC2C0D0AD3D2CCF82CC9CFCCDDD7D32C323736382E392C313139362E38332CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF82CC9CFCCDDD7D32C323736382E30332C313136302E38382CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF82CC9CFCCDDD7D32C323736382E30332C313134352E37332CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323837312E30382C313339322E36322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323736382E322C313033362E31342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333133322E36352C313339322E31352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333133322E36352C313339322E31352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313930342E37322C313030372E38322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313930342E37322C313030372E38322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
        -- 4
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323832352C313339322CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C333030382C313032332CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C323031362C313032332CB2BBB1E42C0D0AD7F3CCF82CD7F3C5DCCAB12C313935322C3937362CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323236302C3833312CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313339322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333134352C313339322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C313339322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038332C313339322CB2BBB1E42C",
        -- 5
       "D3D2CCF82CD7F3C5DCCAB12C323637312C313435362CB2BBB1E42C0D0AD3D2CCF82CD7F3C5DCCAB12C323038362C313132302CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313935332C3739392CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323132342C3739392CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C323030300D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323031352C3437392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3534342C3437392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3838302C3437392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313139332C3739392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3739392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3532382C3739392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313136322C313132302CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313132302CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3732302C313131392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313435362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3437392CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C323230382C3437392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C313435362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132392C313435362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333135372C313435362CB2BBB1E42C",
        -- 6
       "D3D2CCF82CD3D2C5DCCAB12C313437312C313339322CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323735312C313038372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313339322CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323534342C313038372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313636342C313339322CD3D2C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C323737372C313339322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131332C313339322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333134322C313339322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C313339322CB2BBB1E42C0D0AD7F3CCF82CD3D2C5DCCAB12C333136372C313038382CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323139322C3731392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323436302C3732302CB2BBB1E42C",
    },
    tasks = {},
})