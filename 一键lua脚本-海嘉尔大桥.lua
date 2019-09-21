check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "海嘉尔大桥",
    mapCount = 3,
    planeId = 82800,
    overtime = 30, --超时时间，/分钟
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {82900, 82800, 82801 ,82802,82803},

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 海嘉尔村庄
       "C9CFCCF82CD7F326D3D2CAB12C313833362E39352C323037392E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD7F326D3D2CAB12C313639302E34352C313634352E32382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323732332E36332C313438302E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035352E37332C313536372E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 海嘉尔大桥1
       "C9CFCCF82CD3D2C5DCCAB12C323538302C3537352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323234382C3537352CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323032392C323335312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333034312C323331392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313930302C313237392CB2BBB1E42C",
       -- 海嘉尔大桥2
       "D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3633322E33362C323331392E31342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C37332E32322C3633392E3738382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537332E362C3233392E38322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C313133342E33392C3633392E312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323336372E39312C323034382E33382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323131312E342C323336372E352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333038342E35362C3633392E3537382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333035302E32312C3633392E3537382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323333302E39382C313533352E35342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3835372E3537362C323336372E372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313136382E35352C3633392E37392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313136382E35352C3633392E37392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C36362E33352C323331392E39392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3231372E39372C313930372E37332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3231372E39372C313930372E37332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313135342E30322C323336372E34312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 海嘉尔大桥3
       "C9CFCCF82CD3D2C5DCCAB12C323537332C3537352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323033392C323335312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035352C323331392CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313235342C323335312CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323235362C3537352CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323235362C3537352CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313930302C313237392CB2BBB1E42C",
       -- 海嘉尔大桥4
       "D7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3930372E3735392C323336372E392CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3630312E33392C323331392E372CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3639352E34332C3633392E3533362CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313136382C3633392CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313136382C3633392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323932322E322C313832332E36332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333033362E34372C3633392E3934312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333033362E34372C3633392E3934312CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323638372E352C323336382CB2BBB1E42C",
    },
})