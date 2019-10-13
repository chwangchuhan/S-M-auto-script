check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "神秘殿堂",
    mapCount = 1,
    planeId = 265,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {34403.0,34500,34501,34502,34503,34504,34505,34506,34507,34508,34509,34510,34511},
    overtime = 60, --超时时间，/分钟
    endMapIds = {34511}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313334332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930302C313334332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932302C313334332CB2BBB1E42C",
       -- 殿堂	1
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313037312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313135322C313433392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363238332C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363330332C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363332332C313433392CD7F3C5DC2C",
       -- 殿堂	2
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313337352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C3333352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237382C3333352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363239382C3333352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363331382C3333352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313035352C313337352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323037392C313130332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323137302C3839352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313134392C313130332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C333631352C3839352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C333730372C3730332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C343633392C3730332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C343734392C3531312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C353636332C3531312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353736362C3333352CD3D2C5DC2C",
       -- 殿堂	3
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3130302C313335392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831372C313335392CD7F3C5DC2C",
       -- 殿堂中间图 4
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3130302C313335392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831372C313335392CD7F3C5DC2C",
       -- 殿堂中间图
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3130302C313335392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831372C313335392CD7F3C5DC2C",
       -- 殿堂中间图
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3130302C313335392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831372C313335392CD7F3C5DC2C",
       -- 殿堂中间图
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3130302C313335392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831372C313335392CD7F3C5DC2C",
       -- 殿堂中间图
       "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3130302C313335392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831372C313335392CD7F3C5DC2C",
	   -- 殿堂中间图
	   "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3130302C313335392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831372C313335392CD7F3C5DC2C",
	   -- 殿堂	10
	   "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3532372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333939392C313239352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333839392C313239352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333931392C313239352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333933392C313239352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323537302C3532372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323638382C313239352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353832302C313239352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353834302C313239352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353830302C313239352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363239382C313239352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363331382C313239352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363333382C313239352CD7F3C5DC2C",
	   -- 殿堂	11
	   "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3738362C313335392CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3830362C313335392CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832362C313335392CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C323030",
	   -- 殿堂	12
	   "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313838372C313335392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313231372C313335392CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313233372C313335392CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313235372C313335392CD3D2C5DC2CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C323030",
	   -- 副本13
	   "",
	   -- 副本14
	   "",
	   -- 副本15
	   "",
	   -- 副本16
	   "",
	   -- 副本17
	   "",
	},
    onScriptRound = function () -- 副本每次切换地图回调
		if (getmapid() == 34502) then
			useskill(5000420,1)
			sleep(14000)
			useskill(43501018,1)
			sleep(12000)
			useskill(43501022,1)
        end
		if (getmapid() == 34505) then
            useskill(5000420,1)
			sleep(14000)
			useskill(43501018,1)
			sleep(12000)
			useskill(43501022,1)
			
        end
		if (getmapid() == 34509) then
            if mob_if("努比亚")==1 then
				useskill(5000420,1)
				sleep(14000)
				useskill(43501018,1)
				sleep(12000)
				useskill(43501022,1)
			end
        end
		
    end
})