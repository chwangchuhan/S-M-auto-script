check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

wearitem("精良的天空头盔（男）")
wearitem("精良的天空盔甲（男）")
wearitem("精良的天空裤子（男）")
wearitem("精良的天空手套（男）")
wearitem("精良的天空鞋子（男）")
wearitem("精良的天空头盔（女）")
wearitem("精良的天空盔甲（女）")
wearitem("精良的天空裤子（女）")
wearitem("精良的天空手套（女）")
wearitem("精良的天空鞋子（女）")
wearitem("精良的天空之英雄披风")
wearitem("精良的天空之剑圣披风")
wearitem("精良的天空之星芒披风")
wearitem("精良的天空之宗师披风")
wearitem("精良的天空之元素披风")
wearitem("精良的天空之巨星披风")
wearitem("精良的天空之刺客披风")
wearitem("精良的天空之魔枪披风")
wearitem("精良的天空之远古披风")
wearitem("精良的天空之恶魔披风")
wearitem("精良的天空之流浪剑客披风")
wearitem("精良的天空之天穹卡牌师披风")
wearitem("精良的天空之暗影卡牌师披风")
wearitem("精良的天空之阿格尼披风")
wearitem("精良的天空之逐暗者披风")
wearitem("精良的天空之神之使者披风")

local baiseScripts = {
    -- 1 牛东-白色平原1-0.txt
    -- 其实是空脚本，单纯为了适配
    '313233313233313233313233B0B4CAB1B4F3B4F3C9B1CAD6B0C1CAD3B5C4',

    -- 2 牛东-白色平原1.txt
    'BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039362E32382C313339322CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038392E31322C313234382E30382CB2BBB1E4',

    -- 3 牛东-白色平原2-0.txt
    'C9CFCCF82CD7F3C5DCCAB12C313538312E32382C313339322E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313235382E37322C313233322E33322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',

    -- 4 牛东-白色平原2.txt
    'BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039312E382C313339322E38342CB2BBB1E4',

    -- 5 牛东-白色平原3-0.txt
    'C9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3732302E3436312C313339322E33352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313438382E35342C3932372E3135382CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323033322E382C313339322E36342CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323736382E36342C3934332E3234382CD3D2C5DC2C',

    -- 6 牛东-白色平原3.txt
    'C9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323033322E382C313339322E36342CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323336322E38392C313030352E37342CB2BBB1E4',

    -- 7 牛东-白色平原4-0.txt
    'C9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3732302E3436312C313339322E33352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313438382E35342C3932372E3135382CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323033322E382C313339322E36342CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323736382E36342C3934332E3234382CD3D2C5DC2C',

    -- 8 牛东-白色平原4.txt
    'C9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302E3436312C313339322E33352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313038332E36322C3938392E39382CB2BBB1E4',

    -- 9 牛东-白色平原5-340.txt
    'C9CFCCF82CD7F3C5DCCAB12C313630302C313339322E382CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313136392E30382C313231362E31362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313530362E33352C3834382E3736342CD7F3C5DC0D0AC9CFCCF82CD7F326D3D2CAB12C313335322E33322C313231362E33312CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313335372C3834382CB2BBB1E4',

    -- 10 牛东-白色平原5.txt
    'C9CFCCF82CD7F3C5DCCAB12C313538312E32382C313339322E382CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313136392E30382C313231362E31362CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313339322E33322C313231362E33312CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313330302C3832302CB2BBB1E4',
}

common.simpleStart({
    mapName = "蛤蟆谷",
    mapCount = 3,
    planeId = 37,
    minYSpeed = 200,
	maxYSpeed = 2000,
    overtime = 20, --超时时间，/分钟
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {11204, 11600},
    scripts = {
        -- 蛤蟆丘陵
        'BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313434332E39362C3632332E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- 蛤蟆谷
        'BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3933332E3034312C313433392E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
    },
    tasks = {},
    onScriptWhileCallback = function ()
        if (getmapid() == 11600) then
            local mobId = mob_obj_get('蛤蟆大王')
            if (mobId > 0) then
                local mobX = mob_obj_x(mobId)
                local mobY = 1439
                bot_stop()
                gotocoordinate(1, mobX, mobY)
                sleep(1500)
                useskill(5000019, 1)
                sleep(1000)
                bot_start()
            end
        end

    end,
})

common.wearDiaoluo()

if (getmapid() == 98500) then
    common.simpleStart({
        mapName = "白色平原",
        mapCount = 3,
        planeId = 9999999999999999,
        overtime = 20, --超时时间，/分钟
        -- 地图名称列表，需和mapIds一一对应
        mapIds = {98500, 29300, 29301, 29302, 29303, 29304, 29305, 29306, 29307, 29308, 29309, 29310, 29311, 29312, 29313, 29314, 29315, 29316, 29317, 29318, 29319, 29320, 29321, 29322, 29323, 29324, 29325, 29326, 29327, 29328},
        endMapIds = {29328},
        -- 脚本名称列表，需和mapIds一一对应
        -- 支持16进制hex编码脚本
        -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
        scripts = {
           -- 入口
           "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039362E32382C313339322CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038392E31322C313234382E30382CB2BBB1E4",
           -- 29300
           baiseScripts[2],
           -- 29301
           baiseScripts[2],
           -- 29302
           baiseScripts[2],
           -- 29303
           baiseScripts[3],
           -- 29304
           baiseScripts[5],
           -- 29305
           baiseScripts[2],
           -- 29306
           baiseScripts[2],
           -- 29307
           baiseScripts[2],
           -- 29308
           baiseScripts[1],
           -- 29309
           baiseScripts[2],
           -- 29310
           baiseScripts[2],
           -- 29311
           baiseScripts[1],
           -- 29312
           baiseScripts[1],
           -- 29313
           baiseScripts[3],
           -- 29314
           baiseScripts[3],
           -- 29315
           '',
           -- 29316
           '',
           -- 29317
           baiseScripts[7],
           -- 29318
           baiseScripts[7],
           -- 29319
           baiseScripts[5],
           -- 29320
           '',
           -- 29321
           baiseScripts[2],
           -- 29322
           baiseScripts[2],
           -- 29323
           baiseScripts[1],
           -- 29324
           baiseScripts[1],
           -- 29325
           baiseScripts[2],
           -- 29326
           baiseScripts[1],
           -- 29327
           baiseScripts[1],
           -- 29328
           baiseScripts[1],
        },
        -- 任务列表
        -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
        -- 不同npc或不同地图的任务请配置多个task
        tasks = {},
        onScriptWhileCallback = function ()
            if(getmapid()==29303.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[4], 0)
                end
            end
    
            if(getmapid()==29304.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[6], 0)
                end
            end
    
            if(getmapid()==29308.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if (getmapid()==29311.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29312.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29313.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[4], 0)
                end
            end
    
            if(getmapid()==29314.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[4], 0)
                end
            end
    
            if(getmapid()==29315.0) then
                --根据跳跃高度加载不同的脚本--
                if(getjmpheight()>340) then
                    script_txt_loaddata(baiseScripts[9], 0)
                else
                    script_txt_loaddata(baiseScripts[10], 0)
                end
            end
    
            if(getmapid()==29317.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[8], 0)
                end
            end
    
            if(getmapid()==29318.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[8], 0)
                end
            end
    
            if(getmapid()==29319.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[6], 0)
                end
            end
    
            if(getmapid()==29323.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29324.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29326.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29327.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29328.0) then
                if(mob_if("平原的黑月公主")==0 and mob_if("狼孩")==0 and mob_if("平原的上忍")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
        end
    })
end


