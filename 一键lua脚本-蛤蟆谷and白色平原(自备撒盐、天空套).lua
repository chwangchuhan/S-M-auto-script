check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

wearitem("���������ͷ�����У�")
wearitem("��������տ��ף��У�")
wearitem("��������տ��ӣ��У�")
wearitem("������������ף��У�")
wearitem("���������Ь�ӣ��У�")
wearitem("���������ͷ����Ů��")
wearitem("��������տ��ף�Ů��")
wearitem("��������տ��ӣ�Ů��")
wearitem("������������ף�Ů��")
wearitem("���������Ь�ӣ�Ů��")
wearitem("���������֮Ӣ������")
wearitem("���������֮��ʥ����")
wearitem("���������֮��â����")
wearitem("���������֮��ʦ����")
wearitem("���������֮Ԫ������")
wearitem("���������֮��������")
wearitem("���������֮�̿�����")
wearitem("���������֮ħǹ����")
wearitem("���������֮Զ������")
wearitem("���������֮��ħ����")
wearitem("���������֮���˽�������")
wearitem("���������֮��񷿨��ʦ����")
wearitem("���������֮��Ӱ����ʦ����")
wearitem("���������֮����������")
wearitem("���������֮��������")
wearitem("���������֮��֮ʹ������")

local baiseScripts = {
    -- 1 ţ��-��ɫƽԭ1-0.txt
    -- ��ʵ�ǿսű�������Ϊ������
    '313233313233313233313233B0B4CAB1B4F3B4F3C9B1CAD6B0C1CAD3B5C4',

    -- 2 ţ��-��ɫƽԭ1.txt
    'BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039362E32382C313339322CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038392E31322C313234382E30382CB2BBB1E4',

    -- 3 ţ��-��ɫƽԭ2-0.txt
    'C9CFCCF82CD7F3C5DCCAB12C313538312E32382C313339322E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313235382E37322C313233322E33322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',

    -- 4 ţ��-��ɫƽԭ2.txt
    'BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039312E382C313339322E38342CB2BBB1E4',

    -- 5 ţ��-��ɫƽԭ3-0.txt
    'C9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3732302E3436312C313339322E33352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313438382E35342C3932372E3135382CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323033322E382C313339322E36342CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323736382E36342C3934332E3234382CD3D2C5DC2C',

    -- 6 ţ��-��ɫƽԭ3.txt
    'C9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323033322E382C313339322E36342CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323336322E38392C313030352E37342CB2BBB1E4',

    -- 7 ţ��-��ɫƽԭ4-0.txt
    'C9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3732302E3436312C313339322E33352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313438382E35342C3932372E3135382CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323033322E382C313339322E36342CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323736382E36342C3934332E3234382CD3D2C5DC2C',

    -- 8 ţ��-��ɫƽԭ4.txt
    'C9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302E3436312C313339322E33352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313038332E36322C3938392E39382CB2BBB1E4',

    -- 9 ţ��-��ɫƽԭ5-340.txt
    'C9CFCCF82CD7F3C5DCCAB12C313630302C313339322E382CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313136392E30382C313231362E31362CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313530362E33352C3834382E3736342CD7F3C5DC0D0AC9CFCCF82CD7F326D3D2CAB12C313335322E33322C313231362E33312CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313335372C3834382CB2BBB1E4',

    -- 10 ţ��-��ɫƽԭ5.txt
    'C9CFCCF82CD7F3C5DCCAB12C313538312E32382C313339322E382CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313136392E30382C313231362E31362CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313339322E33322C313231362E33312CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313330302C3832302CB2BBB1E4',
}

common.simpleStart({
    mapName = "����",
    mapCount = 3,
    planeId = 37,
    minYSpeed = 200,
	maxYSpeed = 2000,
    overtime = 20, --��ʱʱ�䣬/����
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {11204, 11600},
    scripts = {
        -- �������
        'BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313434332E39362C3632332E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- ����
        'BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3933332E3034312C313433392E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
    },
    tasks = {},
    onScriptWhileCallback = function ()
        if (getmapid() == 11600) then
            local mobId = mob_obj_get('������')
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
        mapName = "��ɫƽԭ",
        mapCount = 3,
        planeId = 9999999999999999,
        overtime = 20, --��ʱʱ�䣬/����
        -- ��ͼ�����б����mapIdsһһ��Ӧ
        mapIds = {98500, 29300, 29301, 29302, 29303, 29304, 29305, 29306, 29307, 29308, 29309, 29310, 29311, 29312, 29313, 29314, 29315, 29316, 29317, 29318, 29319, 29320, 29321, 29322, 29323, 29324, 29325, 29326, 29327, 29328},
        endMapIds = {29328},
        -- �ű������б����mapIdsһһ��Ӧ
        -- ֧��16����hex����ű�
        -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
        scripts = {
           -- ���
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
        -- �����б�
        -- ���������ת����Ӧ��ͼʱִ�У������mapId��δ���û��߳�ʼ�ɻ���������ص����޷���ȡ����
        -- ��ͬnpc��ͬ��ͼ�����������ö��task
        tasks = {},
        onScriptWhileCallback = function ()
            if(getmapid()==29303.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[4], 0)
                end
            end
    
            if(getmapid()==29304.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[6], 0)
                end
            end
    
            if(getmapid()==29308.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if (getmapid()==29311.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29312.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29313.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[4], 0)
                end
            end
    
            if(getmapid()==29314.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[4], 0)
                end
            end
    
            if(getmapid()==29315.0) then
                --������Ծ�߶ȼ��ز�ͬ�Ľű�--
                if(getjmpheight()>340) then
                    script_txt_loaddata(baiseScripts[9], 0)
                else
                    script_txt_loaddata(baiseScripts[10], 0)
                end
            end
    
            if(getmapid()==29317.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[8], 0)
                end
            end
    
            if(getmapid()==29318.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[8], 0)
                end
            end
    
            if(getmapid()==29319.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[6], 0)
                end
            end
    
            if(getmapid()==29323.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29324.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29326.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29327.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
    
            if(getmapid()==29328.0) then
                if(mob_if("ƽԭ�ĺ��¹���")==0 and mob_if("�Ǻ�")==0 and mob_if("ƽԭ������")==0) then
                    script_txt_loaddata(baiseScripts[2], 0)
                end
            end
        end
    })
end


