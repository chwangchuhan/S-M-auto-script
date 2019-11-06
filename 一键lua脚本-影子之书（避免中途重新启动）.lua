check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

-- common.

-- if not common.checkInMap({20004}) then
--     -- 飞机启动执行 --
--     plane(30571)
--     wait_loadmap()
-- end

-- -- 领任务
-- script_txt_loaddata('BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313833392E34382C3632332CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C32303030', 0)
-- sleep(10000)
-- common.doTask(938415, {985701})

-- 大厅：58600 
-- 1号门：58603
-- 3号门：58601
-- 4号门：58605
-- 5号门：58602
-- 7号门：58601
-- 7号门左下：58604

-- c门：58607
-- d门：58612
-- f门：58608
-- h门：58611
-- g门：58610
-- 


-- 怪物
-- 3-5开门检测怪物：花纹精灵蓝
-- G打完：花纹精灵金
-- 7打完：花纹精灵蓝
-- 7左下：花纹索引-第2页
-- 4打完：花纹精灵蓝
-- C打完：花纹精灵金;花纹索引-第3页;

-- 记录门
-- 5开钥匙的门：3068，1151

local isFindYaoshi = false
local isGoBoss = false
local mapIndex = 0
local yaoshiIndex = -1

local yaoshiScripts = {
    -- 目录进3
    'D7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3833382E3838312C3735322E34342CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3537342E3131312C3735322E34342CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C39352E33362C313334342E35322CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3639372E3030312C3635352E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313035302E36382C3735322E37322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
    -- 3刷怪进5
    'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313035322E32392C313434302E32342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C313035322E32392C313434302E32342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313336332E35372C313234372E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313336332E35372C313234372E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313333382E31332C3635352E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313139342E31332C3735322E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C313532302E34322C3735322E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323336382E33332C313538332E31362CB2BBB1E42CCAB9D3C3BCBCC4DC2C39383739393939',
    -- 5拿钥匙
    'CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323438302E31312C313135312E39382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323438302E31312C313135312E39382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313735342E31382C313135312E39382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313735342E31382C313135312E39382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313139362E31382C313234372E36362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323235362E34322C3735312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313639352E38362C313432332E35342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
    -- 目录进h
    'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323337302E39392C313435352E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323337302E39392C313435352E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313732382E30322C313437312E31322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323231362E34332C313538332E31322CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C31303030',
    -- 刷钥匙h门
    'CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3130312E39312C313130332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130312E39312C313130332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
    -- 目录进d
    'D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323233362E33362C313538332E34322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313638372E342C313133352E39342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323934312E32352C313435352E32362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C323934312E32352C313435352E32362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323139322E37372C313032332E34352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323139322E37372C313032332E34352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313939342E36372C313133352E32342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
    -- 刷钥匙d门
    'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333039392E32342C3735312E3539342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333039392E32342C3735312E3539342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',

    '',
}

local bossScripts = {
    -- A
    {
        -- 进4门
        'CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3138382E37352C313334342E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3138382E37352C313334342E39362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3634372E37352C313437312E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313133322E32352C313133352E32382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3838342E3635392C313133352E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 4门刷怪
        '',
    },
    -- D
    {
        -- 进F
        'D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323530372E372C313538332E31342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323631362E39352C313234372E34322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- F刷怪
        'D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313633312E392C313337352E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 进4门
        'CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3138382E37352C313334342E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3138382E37352C313334342E39362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3634372E37352C313437312E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313133322E32352C313133352E32382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3838342E3635392C313133352E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 4门刷怪
        '',
    },
    -- C
    {
        -- 进c
        'D3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C333136372C313435352E32342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323339312E30362C313538332E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323338362E37332C3735322E38342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323830312E35362C3735322E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323937322E38392C3635352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323937322E38392C3635352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C31303030',
        -- c刷怪
        'D7F3CCF82CD7F326D3D2CAB12C313838372E30322C313538332E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD7F3CCF82CD7F326D3D2CAB12C313736302E31382C313538332E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C313538332E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C38302E36382C313131392E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323535392E34382C313535312E31332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C38302E362C313231312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C31303030',
        -- 进F
        'D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323530372E372C313538332E31342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323631362E39352C313234372E34322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- F刷怪
        'D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313633312E392C313337352E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 进4门
        'CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3138382E37352C313334342E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3138382E37352C313334342E39362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3634372E37352C313437312E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313133322E32352C313133352E32382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3838342E3635392C313133352E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 4门刷怪
        '',
    },
    -- E
    {
         -- 进1
         'D7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C39352E33362C313334342E35322CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3233372E39312C3735322E31362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3330392E36332C3635352E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3330392E36332C3635352E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- 1刷怪
         'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333034392E36342C3735312E3233312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333034392E36342C3735312E3233312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C'  ,
         -- 进7
         'D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536302E31322C313437312E34342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3737352E3037362C313437312E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3632372E3433362C313335392E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3632372E3433362C313335392E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- 7刷怪
         'D7F3CCF82CD7F3C5DCCAB12C323438392E35382C313538332E36372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323336382E372C313538332E36372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313031372E34372C313434302E31392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C313031372E34372C313434302E31392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3139382E32372C313334332E36372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F3C5DCCAB12C33322C313434302E30372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3233322E39342C313334332E30332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3230322E372C313334332E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3138332E31342C313334332E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3232322E32362C313334332E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- 7左下
         'D7F3CCF82CD7F3C5DCCAB12C3831342E3930362C313339312E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- 进h
         'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323337302E39392C313435352E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323337302E39392C313435352E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313732382E30322C313437312E31322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323231362E34332C313538332E31322CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C31303030',
         -- h刷怪
         'CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3130312E39312C313130332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130312E39312C313130332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- 进c
         'D3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C333136372C313435352E32342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323339312E30362C313538332E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323338362E37332C3735322E38342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323830312E35362C3735322E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323937322E38392C3635352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323937322E38392C3635352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C31303030',
         -- c刷怪
         'D7F3CCF82CD7F326D3D2CAB12C313838372E30322C313538332E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD7F3CCF82CD7F326D3D2CAB12C313736302E31382C313538332E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C313538332E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C38302E36382C313131392E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323535392E34382C313535312E31332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C38302E362C313231312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C31303030',
         -- 进F
         'D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323530372E372C313538332E31342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323631362E39352C313234372E34322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- F刷怪
         'D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313633312E392C313337352E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- 进4门
         'CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3138382E37352C313334342E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3138382E37352C313334342E39362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3634372E37352C313437312E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313133322E32352C313133352E32382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3838342E3635392C313133352E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
         -- 4门刷怪
         '',
    },
    -- F
    {
        -- 进G
        'CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323230302E37322C313435352E38312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323230302E37322C313435352E38312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323335372E39362C313538332E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- G刷怪
        'D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323437322E37312C313030372E37352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323735322E32312C313233312E34332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323739312E33332C313233312E34332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 进1
        'D7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C39352E33362C313334342E35322CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3233372E39312C3735322E31362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3330392E36332C3635352E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3330392E36332C3635352E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 1刷怪
        'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333034392E36342C3735312E3233312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333034392E36342C3735312E3233312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C'  ,
        -- 进7
        'D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536302E31322C313437312E34342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3737352E3037362C313437312E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3632372E3433362C313335392E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3632372E3433362C313335392E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 7刷怪
        'D7F3CCF82CD7F3C5DCCAB12C323438392E35382C313538332E36372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323336382E372C313538332E36372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313031372E34372C313434302E31392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C313031372E34372C313434302E31392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3139382E32372C313334332E36372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F3C5DCCAB12C33322C313434302E30372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3233322E39342C313334332E30332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3230322E372C313334332E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3138332E31342C313334332E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3232322E32362C313334332E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 7左下
        'D7F3CCF82CD7F3C5DCCAB12C3831342E3930362C313339312E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 进h
        'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323337302E39392C313435352E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323337302E39392C313435352E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313732382E30322C313437312E31322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323231362E34332C313538332E31322CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C31303030',
        -- h刷怪
        'CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3130312E39312C313130332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130312E39312C313130332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 进c
        'D3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C333136372C313435352E32342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323339312E30362C313538332E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323338362E37332C3735322E38342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323830312E35362C3735322E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323937322E38392C3635352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323937322E38392C3635352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C31303030',
        -- c刷怪
        'D7F3CCF82CD7F326D3D2CAB12C313838372E30322C313538332E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD7F3CCF82CD7F326D3D2CAB12C313736302E31382C313538332E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C313538332E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C38302E36382C313131392E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323535392E34382C313535312E31332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C38302E362C313231312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C31303030',
        -- 进F
        'D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323530372E372C313538332E31342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323631362E39352C313234372E34322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C333032392E32352C313435352E34322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032392E32352C313234372E39342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- F刷怪
        'D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313633312E392C313337352E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C33322C313131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 进4门
        'CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3138382E37352C313334342E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3138382E37352C313334342E39362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3634372E37352C313437312E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313133322E32352C313133352E32382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3838342E3635392C313133352E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3639312E3337392C313032332E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 4门刷怪
        '',
    },
    -- B
    {},
}

local yaoshiList = {
    '钥匙A[影子之书] ',
    '钥匙D[影子之书]',
    '钥匙C[影子之书]',
    '钥匙E[影子之书]',
    '钥匙F[影子之书]',
    '钥匙B[影子之书]',
}

local yaoshiTips = {
    '当前钥匙为[A]，进图顺序为[4]',
    '当前钥匙为[D]，进图顺序为[F-4]',
    '当前钥匙为[C]，进图顺序为[C-F-4]',
    '当前钥匙为[E]，进图顺序为[1-7(左下)-H-C-F-4]',
    '当前钥匙为[F]，进图顺序为[G-1-7(左下)-H-C-F-4]',
    '当前钥匙为[B]，进图顺序为[9-I-I(下)-8-H-H(右上)-1]',
}

local function findYaoshiIndex(yaoshiList)
    for i,v in ipairs(yaoshiList) do
        if (item_if(v) ~= 0) then
            return i
        end
    end
    return -1
end  

speak('当前启动SM一键[影子之书脚本]，此脚本特殊，中间请不要停止脚本，否则一定无法完成')

common.simpleStart({
    mapName = "影子之书",
    mapCount = 1,
    planeId = 96107,
    overtime = 30, --超时时间，/分钟
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {20004, 20000, 58600.0, 58603, 58607, 58601, 58602, 58608, 58601, 58604, 58612, 58611, 58610, 58605, 58613, 58614},
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 大厅
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313833392E34382C3632332CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C32303030",
       -- 任务领取地点
       "",
       -- 目录：选择窗口
       "",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {
        {
            mapId = 20000,
            npcId = 938415,
            taskIds = {985701},
            planeId = 96107,
        }
    },
    onScriptRound = function () -- 副本每次切换地图回调
        local mapId = getmapid()
        
        if (mapId == 20004 and task_get_state(985701) == 2) then
            script_txt_loaddata('CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3135342E3935392C3632332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135342E3935392C3632332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C', 0) -- 进入传送门
        end

        -- 启动钥匙巡航
        if (mapId == 58600 and not isFindYaoshi and not isGoBoss and mapIndex == 0) then
            mapIndex = 1
            isFindYaoshi = true
            isGoBoss = false
        end

        -- 钥匙挂机
        if (isFindYaoshi and not isGoBoss and mapIndex ~= 0) then
            local currentScript = yaoshiScripts[mapIndex]
            script_txt_loaddata(currentScript, 0)
            sleep(3000)

            mapIndex = mapIndex + 1

            -- 钥匙7张图跑完，且回到大厅
            if (mapIndex > 7 and mapId == 58600) then
                yaoshiIndex = findYaoshiIndex(yaoshiList)
                if (yaoshiIndex ~= -1) then
                    speak(yaoshiTips[yaoshiIndex]..'，需要使用'..yaoshiList[yaoshiIndex])
                    item_use(yaoshiList[yaoshiIndex])
                else -- 没拿到钥匙
                    speak('由于无钥匙，该脚本30分钟内会跳过，或手动传送出')
                end

                isFindYaoshi = false
                isGoBoss = true
                mapIndex = 1
            end
        end
        
        -- 暗影龙到boss咯
        if (mapId == 58613) then
            isGoBoss = false
            script_txt_loaddata('D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323931352E322C313433392E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333132332E33352C313339312E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333132332E33352C313339312E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
        end

        if (mapId == 58614) then
            isGoBoss = false
            script_txt_loaddata('CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333031392E38372C3735312E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333031392E38372C3735312E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
        end

        -- 打怪挂机
        if (not isFindYaoshi and isGoBoss) then
            local currentScript = bossScripts[yaoshiIndex][mapIndex]
            sleep(2000)
            script_txt_loaddata(currentScript, 0)

            mapIndex = mapIndex + 1
        end
        
    end,

    onScriptWhileCallback = function () -- 每次脚本内while触发
        local mapId = getmapid()

        -- 刷钥匙中的5进门
        if (isFindYaoshi and not isGoBoss and mapId == 58602) then
            if (not common.checkMob('花纹精灵蓝')) then
                script_txt_loaddata('CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323438302E31312C313135312E39382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323438302E31312C313135312E39382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313735342E31382C313135312E39382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313735342E31382C313135312E39382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313139362E31382C313234372E36362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323235362E34322C3735312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313639352E38362C313432332E35342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333036392E322C313135312E39352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036392E322C313135312E39352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
            end
        end

        -- 刷怪中的4进门
        if (not isFindYaoshi and isGoBoss and mapId == 58605) then
            if (not common.checkMob('花纹精灵蓝')) then
                script_txt_loaddata('CEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313735362E38352C313236332E312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C323235382E37352C3934332E3330352CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AC9CFCCF82CD7F326D3D2CAB12C313735362E35322C313236332E33312CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030300D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323435342E37352C3635352E3138352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323632312E31332C3535392E3036352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323632312E31332C3535392E3036352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
            end
        end

        -- 刷怪中的g进门
        if (not isFindYaoshi and isGoBoss and mapId == 58610) then
            if (not common.checkMob('花纹精灵金')) then
                script_txt_loaddata('D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323437322E37312C313030372E37352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323735322E32312C313233312E34332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323739312E33332C313233312E34332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333039392E30322C313233312E32332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333039392E30322C313233312E32332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
            end
        end

        -- 刷怪7左下进门
        if (not isFindYaoshi and isGoBoss and mapId == 58604) then
            if (not common.checkMob('花纹索引-第2页')) then
                script_txt_loaddata('D7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313639312E34352C313133352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333036392E322C313530332E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036392E322C313530332E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
            end
        end
        
         -- 刷怪C进门
         if (not isFindYaoshi and isGoBoss and mapId == 58607) then
            if (not common.checkMob({'花纹精灵金', '花纹索引-第3页'})) then
                script_txt_loaddata('D7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C313538332E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C38302E36382C313131392E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323535392E34382C313535312E31332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C38302E362C313231312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313736312C313538332E30312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C313831332E31362C313538332E30312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831332E31362C313538332E30312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C313030300D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372E322C313538332E362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C31303030', 0)
            end
        end

        
    end,
})