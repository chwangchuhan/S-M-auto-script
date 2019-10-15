check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "���ʵ�",
    mapCount = 3,
    planeId = 201,
    -- ��ͼ�����б������mapIdsһһ��Ӧ
    mapIds = {32203,32400,32401,32402,32403,32404,32405,32406,32407,32408,32409,32410,32411,32412},
    overtime = 40, --��ʱʱ�䣬/����
    endMapIds = {32412}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_giveitemif=1, 
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },

    -- �ű������б������mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323132392C313337352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313932302E30342C313337352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323433312E39312C313337352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- ���ʵ�1
       "D7F3CCF82CD3D2C5DCCAB12C323331322C313131312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3133352C3736372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3134352C3736372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3136352C3736372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3138352C3736372CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313734352E30332C3736372E30382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333033352C3736372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333034372C3736372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036312C3736372CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323430302C313331312CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323239312C313331312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333032332C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333034332C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036332C313331312CD7F3C5DC2C",
       -- ���ʵ�2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135322C3735312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035362C3735312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3436322C313239352CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3234372C313239352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032362E352C313239352E30382CD7F3C5DC",
       -- ���ʵ�3
       "C9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323830302C313238302CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323531322C313130342CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C333032342C3931322CD7F3C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323634302C3732302CD3D2C5DC2C0D0AC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C333032342C3532382CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323530302C3333352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3238362C3735312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737392C3839352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3431362C313237392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313337312C313237392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430392C313237392CD3D2C5DC2C",
       -- ���ʵ�4
       "D3D2CCF82CD7F326D3D2CAB12C3439312C3935352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3735312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C313030372C3735312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034332C313331312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031352C313331312CD3D2C5DC2C",
       -- ���ʵ�5
       "D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323030302C313337352CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C363235302C313337352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363231352C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363230352C3632332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363139352C3632332CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C343132382C313337352CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C333337382C3839322CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313132382C313038352CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313138312C313037322CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313130372C313039312CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C343230302C313337352CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C363139352C3632332CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C363139302C3632332CD7F3C5DC2C0D0A0D0A",
       -- ���ʵ�6
       "D3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C35302C313233312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C343932372C313233312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363134322C313032332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363133322C313032332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363132322C313032332CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C343135392C313233312CB2BBB1E42C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C333830302C313233312CD7F3C5DC2C",
       -- ���ʵ�7
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333136372C313239352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036302C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037392C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3434372CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3733392C3634332CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3738382C3639322CD7F3C5DC2C0D0A",
       -- ���ʵ�8
       "D7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313439302C3837392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3836382C3434372CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313537362C3434372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938352C3434372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035332C3434372CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C33322C3836332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3535382C3439322CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323338302E33372C313236332E33342CD3D2C5DC2C",
	   -- ���ʵ�9
	   "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C313237392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313837382C313237392CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323735352E37362C313237392E33322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
	   -- ���ʵ�10
	   "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323134312C313339312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323033392C3834372CB2BBB1E42C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313539392C313339312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313530322C3735312CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C323631382C313339312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323737302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839322C3839392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839352C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838352C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C3930392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323836352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323836302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323834352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323834302C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323833352C3931312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323832392C3931312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323334362C3931312CB2BBB1E42C0D0AC9CFCCF82CD7F326D3D2CAB12C313438352C313035352CB2BBB1E40D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C323638372C313339312CB2BBB1E40D0AC9CFCCF82CD7F326D3D2CAB12C3639302C313339312CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3834302C313138332CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3835302C313138332CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3932372C3935392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C33383136303037",
	   -- ���ʵ�11
	   "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3634362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3130300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3633362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3130300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3632362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3130300D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3833312CD3D2C5DC2C",
	   -- ���ʵ�12a
	   "BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3634362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3633362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C3632362C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C33322C3833312CD3D2C5DC2C",
	   -- ���ʵ�12b 14
	   "D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3534322C3833312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3635392C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634392C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3633392C3833312CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C35300D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C3939393030330D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303130370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303130370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3633372C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363830370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363830370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333730370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333730370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333230360D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333230360D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3630302C3833312CB2BBB1E42CCAB9D3C3BCBCC4DC2C33383134333037",
	   --  15
	   "",
	   --  16
	   "",
	   -- ����17
	   "",
	},
	onScriptRound = function () -- ����ÿ���л���ͼ�ص�
		--[[if (getmapid() == 32402) then
			sleep(10000)
			repeat
				sleep(200)
				if mob_if("���ʵ�Ļ���Ұ�ޱ�;")==0 then
				ini_change("find_youhao","ˮ���󳡼�ʱ��;??? 2Lv;ɱ���ȸ���˹�ع���;???? ????;Guardian;???;����;���صģ�����������ҵ��������5�빥��һ�Σ�һ��1��;�޵�_SMG;��������;DS-SL1;��¡;�������������;;��ɱ������1;��ɱ������2;������ʧ1������;������ʧ2������;������ʧ3������;������ʧ4������;���ƶ�������;����Ծ������;������������;��MHP������;�ж�������;������ʧ5������;��1����ʧ������;��2����ʧ������;��3����ʧ������;��4����ʧ������;��5����ʧ������;��6����ʧ������;��������5������;��BOSSһ��������;������ʧ��Ⱦ��;�����Ƶ���������;һ����ը��ը��;����������;�Ӳ�;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;???? ???;���̣���;���ƣ���;����;BOSS�����͹�;С��5;����5;����3;С��3;Ұ��������;BOSS�������;BOSS����������;����С����1��7��;С������46���ʱ��;���֣�����Ƶ�ʸ�;����ģ����;������;���������Ĵ�è;?? ???;��������������;��è����2Lv;���������;���湥���֣��ٻ���;�������ٻ���;ӣ����Ů;����ӳ�;�۷�;��ɱBOSS2����������;ΪBoss1������������;����;ΪBoss2������������;����������;���湥����;�������;�����ٶ�������;ը��;???? ???;С���ٻ�������;��ɱ���ܹ�3�ٻ�������;��è����;Сʦ��;��ѧ��ͽ;Сʦ��;��ʦ��;ʦ��;ʦ��;DS-SL1;DS-G3648;DS-RG52;?? ???;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;��� Ӱ��;��è 3Lv;��è 6Lv;��è 5Lv;��è 4Lv;��è 2Lv;����õ�巴��������;õ�巴��������;???;ŷ�����ĳ�������;????? ??;����������;����ҳ����˺���������;��ȼ������;������;��ˮ�����֣��ٻ���;��ˮ����ٻ���;�����õ��;���;����ΪBoss1����ӷ���������;����ΪBoss1������������;���湥����;�������;���߹��ܹ�4����ɱbuff������;��ɱ����ǽ������;��ɱboss1����������;boss2�����ٻ�������;���ܹ�2�����ٻ�������;����;���ܹ�1�ٻ�������;��ɱ���ܹ�3�ٻ�������;С���ٻ�������;���һ���ٻ�1;���׶ι���;���һ���ٻ�3;�������ٻ�1;�������ٻ�4;�������ٻ�3;�������ٻ�2;��������ٻ�1;��������ٻ�6;��������ٻ�5;̽�ռҳɹ��ٻ�;�������ٻ�7;�������ٻ�6;�������ٻ�5;��������ٻ�2;��������ٻ�5;���һ���ٻ�2;���һ���ٻ�4;���һ���ٻ�5;���һ���ٻ�6;ˮ���󶴼�ʱ��;��������ٻ�3;��Ԫ��;Ԫ��������;ˮԪ��;��Ԫ��;��ɱ������;������ɱ������;�����ɱ������1;���1;���2;���3;�����ɱ������2;�������������;??? ?? ??;Ŧ���¹�������С������;������;��ɱ������1;ʱ�ճ���;��ɱ�Ƿ���;������è��²;��צ;~��Դ~;�Ӳ�;ɱ������������;�ʼҴ��ڴ��;��ȼ������;Ӱ�� ͸����;����������;�����ҵĻ���;��ɫ������;���ҵ���Ļ���;��ɫ�����ң�;�м��ɱ��С��������5;С��5;����ʯͷ5;Ұ���������;���ų����ٳ���������5������5��ʯͷ�ִ��ٻ���������BUFF��;���ų����ٳ���������3������3��ʯͷ�ִ��ٻ���������BUFF��;����С����һֻҰ���������ͷͷ;����5;����3;С��3;�м��С���ٻ���5;����С����һֻҰ����ͷͷ;�м��С���ٻ���3;����С����һֻҰ��������ͷͷ;�̳أ�С�֣�;�Ƴأ�С�֣�;Ұ��������;Ұ��������;Ұ����;�������м�� 5S;ɱ��С��������5;�м��С��5;���أ�С�֣�;�м��ɱ��С��������3;����ʯͷ3;���ͼ���;??????? ??? ??;���̣���;���ƣ���;BOSS�����͹�;BOSS�����������;а�����;0;ȥ��BOSS�ӳɵ���Ȫ;�������ٻ���;����������;ը��;�����ٶ�������;ʯԪ��;�����ͽ;���ӥ;ˮ�ù�������;ˮ���ϰ�;")
				end
			until(door_if(1390,1279)==1)
		end]]--
		if (getmapid() == 32409) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_hit_range_max",300)
		end
		if (getmapid() == 32410) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_hit_range_max",280)
		end
		if (getmapid() == 32411) then
			ini_change("tobot_hit_range_top",150)
			ini_change("tobot_hit_range_max",280)	
		end
		if (getmapid() == 32412) then
			ini_change("tobot_hit_range_top",150)
		end
	end
})