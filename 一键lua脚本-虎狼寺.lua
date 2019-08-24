check=1

local common = dofile(path_scripts.."S&M auto\\lib\\common.lua")
 
common.simpleStart({
    mapName = "虎狼寺",
    mapCount = 3,
    planeId = 123,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {63404, 20600, 20601, 20602, 20603},

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
        "D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3939302E3134342C313032332E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3634372E3939382C313032332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3833392E3234362C313032332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
        "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313435352E36342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313230392E36352C313333342E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C333634332E32352C313334382E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313437312E37362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353732382E38382C313437312E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323439362E36332C313437312E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363231372E36342C313437312E34342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
        "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313435352E36342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3633302E3330392C313332312E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313437312E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313838382E35342C313437312E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C343434352E38362C313334362E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C363131322E35322C313437312E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313437312E33362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363234392E30312C313437312E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
        "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313432332E36382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3430352C313330362E32382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313636322E30382C313236332E38382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313238352E30332C313236332E35362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3538322E3133312C3839352E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323830392E36342C3839352E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3839352E31362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039322E37312C3839352E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3532372E32342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323038392E372C3532372E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323434382E32332C3532372E3634312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
        "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313133342E35362C313032332E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {},
})
 