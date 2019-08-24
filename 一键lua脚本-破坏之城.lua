 check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "破坏之城",
    mapCount = 3,
    planeId = 256,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {33305, 33400 ,33401,33402,33403,33404,33405,33406,33407,33408,33409,33410},

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
        -- "破坏城入口.txt",
        -- "破坏之城 1.txt",
        -- "破坏之城 2.txt",
        -- "破坏之城 3.txt",
        -- "破坏之城 4.txt",
        -- "破坏之城 5.txt",
        -- "破坏之城 6.txt",
        -- "破坏之城 7.txt",
        -- "破坏之城 8.txt",
        -- "破坏之城 9.txt",
        -- "破坏之城 10.txt",
        -- "破坏之城 11.txt",
        "D6D8D6C3B8B1B1BE2CD7F326D3D2CAB12C3735332C3635392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313030362C3630372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313439302C3633392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333535372C3739392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313230322C313536372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138332C323139312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036342C343232332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF8A3A8D6FAC5DCA3A92CD7F326D3D2CAB12C323338312C343331392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313030382C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3535382C3632332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313131382C3632332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343238362C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363235322C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3736382C3633392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3731352C3633392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3737342C3633392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AC9CFCCF82CD7F326D3D2CAB12C3839372C3633392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313230362C313536372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313133332C323139312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313035352C343232332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132312C353131392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3730392C3633392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313234312C3433312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323035382C313133352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313930342C343131312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF82CD7F3C5DCCAB12C3839362C343131312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C353037312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323433352C353037312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313235312C3433312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C333136372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313334332C343131312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C353037312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323532372C353037312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3433312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF8A3A8D6FAC5DCA3A92CD7F326D3D2CAB12C313439302C313930332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3639372C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333230362C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333532382E37312C313433392E35362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343338322E33382C313433392E35362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3833372E3531392C3733352E39342CB2BBB1E4",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313435342E39322C3733352E30382CB2BBB1E4",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {
        {
            mapId = 33305,
            npcId = 7099,
            taskIds = {154008089},
        }
    },
})