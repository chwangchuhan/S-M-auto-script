check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "冰激凌庭院",
    mapCount = 2,
    planeId = 285,
    overtime = 60, --超时时间，/分钟
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {37500, 37303, 37400 ,37401,37402,37403,37404,37405,37406,37407,37408,37409,37410},
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
	isLuckyDog = true,
    scripts = {
       -- 春植岛大厅
       "",
       -- 玩偶街4
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3635302C3336372CD3D2C5DCA3AC0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313230302C3336372CD7F3C5DCA3AC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3833382C3336372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832382C3336372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3834382C3336372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C3630302C313339312E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C3733302E38312C313130342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C3832312E31352C3731392E34352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 冰淇淋1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738382C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737382C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313433392CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313832332C313433392CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030340D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C313430302C313433392CB2BBB1E42CCAB9D3C3BCBCC4DC2C33383136303034",
       -- 冰淇淋2
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3833322C3739392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323336372C3739392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313439382C3739392CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C3238392C3739392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3739392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3831322C3434372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3739392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323939342C3739392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313433392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030322C313433392CB2BBB1E42C",
       -- 冰淇淋3
       "C9CFCCF82CD7F326D3D2CAB12C323131312C313433392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD3D2CCF82CD7F326D3D2CAB12C313832372C313131392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323939362C3833312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0A",
       -- 冰淇淋4
       "C9CFCCF82CD7F326D3D2CAB12C323435302C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632322C313433392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3731342C3537352CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313232322C3537352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039342C3434372CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323638382C3434372CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F326D3D2CAB12C313031362C313433392CB2BBB1E42C0D0AD3D2CCF82CD7F326D3D2CAB12C313836372C313433392CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313236392E36392C313131392CD7F3C5DC2C",
       -- 冰淇淋5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313438392C313433392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323439332C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3735352C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD3D2CCF82CD7F326D3D2CAB12C3132352C313433392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD3D2CCF82CD7F326D3D2CAB12C3437392C313131392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF82CD7F326D3D2CAB12C323937362C313433392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF82CD7F326D3D2CAB12C323732302C313131392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313336352C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3437392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035372C3437392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 冰淇淋6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037382C3535392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035392C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0A",
       -- 冰淇淋7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134392C3739392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035312C3535392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF82CD7F326D3D2CAB12C313133332C313433392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF82CD7F326D3D2CAB12C3637322C313131392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF82CD7F326D3D2CAB12C3438302C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- 冰淇淋8
       "D3D2CCF82CD7F326D3D2CAB12C3534332C313433392CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3739392C313131392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633392C313433392CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323135302C3935392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323638352C3439352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3539322C3439352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633362C3439352CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323635362E36372C313433392E322CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323430302E33392C313131392E39362CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313133362C3636332CD3D2C5DC2C",
       -- 冰淇淋9
       "D3D2CCF82CD3D2C5DCCAB12C313732372E30392C313433392E37382CB2BBB1E42C0D0AD7F3CCF82CD3D2C5DCCAB12C323336372E30352C313131392E30362CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C3332302E39352C3733352E3331372CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C33322C3431352CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C38362E382C3431352E3237372CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3535312E3330392C3333352E342CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313934312C3733352E32342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036322C3333352E36382CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038322C3333352E36382CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130322C3333352E36382CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C3839352CD3D2C5DC2C",
       -- 冰淇淋10
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3839392C313433392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0A",
       -- 冰淇淋11
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3839392C313433392CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C3530300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3930392C313433392CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C353030",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {
        {
            mapId = 37500,
            npcId = 7226,
            taskIds = {181002002},
            planeId = 284,
        }
    },
    onScriptEnd = function  ()
        plane(285)
        wait_loadmap()
		sleep(500)
        common.doTask(7226, {181002002})
    end,
})