check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "索拉城斗兽场",
    mapCount = 3,
    planeId = 191,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {30500.0,31000.0,31001.0,31002.0,31003.0},

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
	isLuckyDog = true,
    scripts = {
        -- 1
        "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3631352C3534332CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3939302C3534332CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3830322C3534332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3634322C3534332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3638392C3534332CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C313138302C3836332CB2BBB1E42CCAB9D3C3B7C9BBFA2C3139310D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C33322C313139392CB2BBB1E42CCAB9D3C3B7C9BBFA2C3139310D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3130302C323036332CB2BBB1E42CCAB9D3C3B7C9BBFA2C313931",
        -- 2
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313134302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313137302C3638372CB2BBB1E42C0D0A",
        -- 3
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313134302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313137302C3638372CB2BBB1E42C0D0A",
        -- 4
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313134302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313137302C3638372CB2BBB1E42C0D0A",
        -- 5
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313134302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136302C3638372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313137302C3638372CB2BBB1E42C0D0A",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {
        {
            mapId = 30500,
            npcId = 7078,
            taskIds = {144007400,144007401,144007402,144007403,144007404,144007405,144007406,144007407,144007408,144007409,144007410},
        }
    },
    onScriptEnd = function  ()
        -- 放弃未完成任务
        common.dropTask({144007400,144007401,144007402,144007403,144007404,144007405,144007406,144007407,144007408,144007409,144007410})
    end,
})
