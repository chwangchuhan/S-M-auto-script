check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "瀑布丛林",
    mapCount = 15,
    planeId = 282,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {37003,37100,37101,37102,37103,37104,37105,37106,37107},
    overtime = 60, --超时时间，/分钟
    endMapIds = {37107}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
	},
	isLuckyDog = true,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3231352E32312C313433392E30382CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3233352E32312C313433392E30382CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3235352E32312C313433392E30382CB2BBB1E42C",
       -- 丛林1
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313530332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313838372C313530332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313731342C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313733342C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313735342C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737342C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739342C313530332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313832332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313832332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313532312C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313534312C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313536312C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313538312C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313630312C313832332CD7F3C5DC2C",
       -- 丛林2
       "",
       -- 精灵家3
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313530332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313838372C313530332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313731342C313530332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313733342C313530332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313735342C313530332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737342C313530332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739342C313530332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323330302C3535392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313435392C3535392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313437392C3535392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313439392C3535392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313531392C3535392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313533392C3535392CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3831362C313832332CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313330302C313832332CD3D2C5DC2C",
       -- 丛林3 4
       "D7F3CCF82CD7F326D3D2CAB12C323031362C313832332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313832332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313131392C313832332CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3630302C313832332CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C38302C313136372CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3130302C313136372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3632332CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313437302C3735312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031312C313033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333033312C313033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035312C313033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037312C313033392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039312C313033392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313231362C3733362CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323138302C313034362CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323137302C313034362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313832332CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3530302C3632332CD3D2C5DC2C",
       -- 丛林4 5
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C313832332CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313335302C313832332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3630382C313133352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313632302C313133352CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313230302C313133352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323638322C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323636322C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323634322C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323632322C313832332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323631322C313832332CD7F3C5DC2C0D0A",
       -- 精灵长老家6
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C37322C313530332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313838372C313530332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313735342C313530332CD7F3C5DC2C0D0A",
       -- 丛林5 7
       "",
       -- 丛林6 8
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313838372C313530332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313030362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313032362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313034362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313036362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313038362C313530332CD3D2C5DC2C0D0A",
	   -- 副本9
	   "",
	   -- 副本10
	   "",
	   -- 副本11
	   "",
	   -- 副本12
	   "",
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
        if (getmapid() == 37100) then
			ini_change("tobot_hit_range_top",300)
			ini_change("tobot_hit_range_ignore",500)
			ini_change("tobot_findmobif",1) 
            ini_change("find_youhao","特里尼雅亲卫队;冰冰棒;棒棒冰;???? ???;小怪召唤隐身怪;击杀功能怪3召唤隐身怪;龙猫妹妹;小师兄;初学门徒;小师妹;大师姐;师傅;师叔;DS-SL1;DS-G3648;DS-RG52;?? ???;纽特攻击陷阱旋风（大）;水晶矿场计时器;岐离 影刃;龙猫 3Lv;龙猫 6Lv;龙猫 5Lv;龙猫 4Lv;龙猫 2Lv;悲大玫瑰反弹隐身怪;玫瑰反弹隐身怪;???;欧若拉的宠物蚂蚁;????? ??;减防隐身怪;给玩家持续伤害的隐身怪;点燃我上天;隐身怪;湖水攻击怪（召唤）;湖水怪物（召唤）;成年的玫瑰;火把;永久为Boss1幻像加防御隐身怪;永久为Boss1减防御隐身怪;火焰攻击怪;火焰怪物;免疫功能怪4的秒杀buff隐身怪;击杀火焰墙隐身怪;击杀boss1幻想隐身怪;boss2真身召唤隐身怪;功能怪2死后召唤隐身怪;跳板;功能怪1召唤隐身怪;击杀功能怪3召唤隐身怪;小怪召唤隐身怪;神殿一阶召唤1;神殿阶段怪物;神殿一阶召唤3;神殿二阶召唤1;神殿二阶召唤4;神殿二阶召唤3;神殿二阶召唤2;神殿三阶召唤1;神殿三阶召唤6;神殿三阶召唤5;探险家成功召唤;神殿二阶召唤7;神殿二阶召唤6;神殿二阶召唤5;神殿三阶召唤2;神殿三阶召唤5;神殿一阶召唤2;神殿一阶召唤4;神殿一阶召唤5;神殿一阶召唤6;水晶矿洞计时器;神殿三阶召唤3;火元素;元素神谕者;水元素;光元素;秒杀隐身怪;消除秒杀隐身怪;清除秒杀隐身怪1;火把1;火把2;火把3;清除秒杀隐身怪2;清除减速隐身怪;??? ?? ??;纽尔德攻击陷阱小龙卷风;宝莱乌;秒杀隐身怪1;时空城门;击杀非法者;巨型龙猫俘虏;巨爪;~毒源~;杂草;杀死宝箱隐身怪;皇家大炮打击;点燃我上天;影刃 透明怪;毒气隐身怪;从左到右的火焰;红色蜡烛（左）;从右到左的火焰;红色蜡烛（右）;中间怪杀死小门隐身怪5;小门5;中门石头5;野蛮族飞镖手;中门持续召出的隐身怪5（中门5给石头怪打召唤祖拉尔的BUFF）;中门持续召出的隐身怪3（中门3给石头怪打召唤祖拉尔的BUFF）;引诱小门召一只野蛮族飞镖手头头;中门5;中门3;小门3;中间怪小门召唤怪5;引诱小门召一只野蛮人头头;中间怪小门召唤怪3;引诱小门召一只野蛮族杖手头头;绿池（小怪）;黄池（小怪）;野蛮族火把手;野蛮族杖手;野蛮人;祖拉尔中间怪 5S;杀死小门隐身怪5;中间怪小门5;蓝池（小怪）;中间怪杀死小门隐身怪3;中门石头3;传送检测怪;??????? ??? ??;（绿）缸;（黄）缸;BOSS死后传送怪;BOSS死后宝箱闪电怪;邪恶机甲;0;去除BOSS加成的温泉;火焰怪物（召唤）;跳板隐身怪;炸弹;减慢速度隐身怪;石元素;浣熊门徒;打更鹰;水蚊攻击怪物;水蚊障碍;")
			ini_change("find_ewai","宝箱;攻击我开始副本;时间怪物;奇怪机关;奖励宝箱;掉落喜字隐身怪;掉落悲字隐身怪;神殿时间怪物;竹偶;高级宝箱;开始副本竹偶怪;纯洁钥匙;纯净宝箱;")
			bot_stop()
			ini_change("ban_hit_mob",1)
			common.wearJingyan()
			sleep(500)
			common.wearJingyan()
			sleep(500)
			ini_change("ban_hit_mob",0)
			bot_start()
			item_use(430453149)--古语
			if isbuff('铭·属性力药水')==0 then
				item_use(430139031)--属性力药水
				sleep(100)
			elseif isbuff('效果')==0 then
				item_use(430139017)--武器最大伤害药水
				sleep(100)
			end
        end
		if (getmapid() == 37106) then
			if isbuff('铭·属性力药水')==0 then
				item_use(430139031)--属性力药水
				sleep(100)
			elseif isbuff('效果')==0 then
				item_use(430139017)--武器最大伤害药水
				sleep(100)
			end
			sleep(10000)
			repeat
				sleep(200)
				local mobId = mob_obj_get('特里尼雅')
				if(mobId==0) then
					script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C37322C313530332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313838372C313530332CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313431332C313530332CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313031302C3738332CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313031302C3738332CD3D2C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3831322C313132372CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3831322C313132372CD7F3C5DC2C",0)
						if(door_if(932,1503)==1) then
						script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3930322C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3931322C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3933322C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3935322C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3937322C313530332CD3D2C5DC2C",0)
						end
				else
					script_txt_loaddata("",0)
				end
				if (getmapid() == 37107) then
					script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313838372C313530332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313030362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313032362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313034362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313036362C313530332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313038362C313530332CD3D2C5DC2C0D0A",0)
					break
				end
			until(getmapid() ~= 37106)
        end
		if (getmapid() == 37107) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_findmobif",0) --关闭打完怪才进门
			bot_stop()
			ini_change("ban_hit_mob",1)
			ini_change("tobot_scriptbot",0)
			common.wearDiaoluo()
			sleep(500)
			ini_change("ban_hit_mob",0)
			ini_change("tobot_scriptbot",1)
			bot_start()
        end
    end
})