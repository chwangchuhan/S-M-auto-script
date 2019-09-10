check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "��ʯ����",
    mapCount = 1,
    planeId = 283,
    -- ��ͼ�����б������mapIdsһһ��Ӧ
    mapIds = {37004,36900,36901,36902,36903,36904,36905,36906,36907,36908,36909,36910,36911},
    overtime = 300, --��ʱʱ�䣬/����
    endMapIds = {36910,36911}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },
	isAutoWearDiaoluo = true,
    -- �ű������б������mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630302C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632302C313433392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313634302C313433392CB2BBB1E42C",
       -- ����1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830322C313732372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313831322C313732372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313832322C313732372CB2BBB1E42C",
       -- ����2
       "D3D2CCF82CD7F3C5DCCAB12C343136302E32342C313532342CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C343939352E36332C313231352E31372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C343535302C313231352CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C353439322E39392C313033392E30352CD3D2C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C333634382E36382C313539392E30322CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363137352E38372C313033392E33312CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3436352E3732312C3535392E34382CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313032392E31322C3535392E3634342CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313737382E31332C3731392E3336342CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313434322E39372C3735312E3332342CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C363034382E322C3633392E3836392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363237352E35382C3633392E39362CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313938332C313732372E382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323734392E38362C3534332E3937392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323732352E36382C3534332E3937392CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C333235302C313334332E30362CD7F3C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333234372E38312C3534332E3337392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333230302C3534332E3337392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333137302C3534332E3337392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333134302C3534332E3337392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333131302C3534332E3337392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333038302C3534332E3337392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333035302C3534332E3239392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C333032302C3534332E3239392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323835302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323938302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323931302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323933302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323937302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333030302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333032302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333035302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333038302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333131302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333134302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333137302C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333230302E30342C3534332E3239392CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C333339322E38392C3534332E3337392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C343530302C313732372E332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C343136302E39312C313732372E31382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C353532322E38322C313033392E39362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- ����3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333735392C313732372CB2BBB1E42C0D0AD3D2CCF82CD3D2C5DCCAB12C353234372C313732372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936352C3336372CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C3831392C3437392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313536322C3336372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333830302C313732372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313330372C313133352CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323037392C313133352CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313631362C313732372E35392CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323333362C3336372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C333232352C313732372CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C333039392C313133352CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C333236322C3733352CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C363230302C313732372E322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C353530342C313033392E31332CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C353530352C313033392E31332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C343731322E37382C313337362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C353033392E32312C313336302CD7F3C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C363135302C313732372E33322CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C363132302C313732372E33322CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C363039302C313732372E33322CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C363036302C313732372E33322CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C363033302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C363030302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353937302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353934302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353931302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353838302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353835302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353832302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353739302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353736302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353733302C313732372E31352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353638302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353731302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353734302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353737302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353830302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353833302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353836302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353839302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353932302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353935302C313732372E33322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C353938302C313732372E31352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C363031302C313732372E31352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363239342E34362C313732372E322CD3D2C5DC2C",
       -- ����4
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3936362C313732372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3934392C3935392CB2BBB1E42C",
       -- ����5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131302C3630372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036352C3630372CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3833322C313334332CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3434382C3935392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C3230352C3537352CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313533312E372C313732372E35362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313038382E31312C313732372E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- ����6
       "D3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313430352E36342C313732372E33372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323837392C313732372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313231362C313732372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313437312C313130332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323730352C3434372CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313934372C3632332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313933302C313130332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323533352C313138332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323230322C313139392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353337352C3739392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C343935342C3739392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C343137352C313030372CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C333038322C3537352CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C343632372C313030372CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323237342E39332C313139392E35392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323535302C3836332E3836372CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323335322C3836332E3130372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130342E35342C3935392E3632382CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353239302C3237312E38382CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353236302C3237312E38382CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353233302C3237312E38382CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353230302C3237312E38382CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3537362E34352C313231352E37322CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C333933372E332C313732372E39322CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C333838352E32392C3633392E38372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C343533382E39352C3633392E38372CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C363134312E362C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363239392E33382C3139312E322CD3D2C5DC2C",
       -- ����7
       "C9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313438382C313732372E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313931392E34332C313334332E32342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313431342E32312C313334332E32382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3630382E3636312C3535392E3932382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313931392E32322C3834372E3034382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3438302E3530322C313130332E30352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313437312E35342C3330332E3732382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD3D2C5DCCAB12C3933322E3230312C313130332E37342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C363234322E35352C313732372E38382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- ����8
       "D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3131362E36332C313239352E30382CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3332322E31362C313239352E30382CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3638382C313239352E30382CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3235362E38342C3739392E36372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C313931342E34362C313239352E35312CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3935342E3230312C3739392E38372CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313030322E35362C3739392E38372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C353639352E33372C313732372E39342CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C343136302E32382C313732372E39342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323632342E37362C313334332E38322CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C353337372E34332C313732372E30382CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C353235362E35332C3837392E30382CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C353832332C3537352CD3D2C5DC2C",
	   -- ����9
	   "D6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C313839362E352C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C313934382E30362C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323233382E34362C313136372E36342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C323137302E372C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C323130322E39342C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C323033352E31382C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C343539302E36382C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C343634382E37362C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C343731362E35322C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C343739332E39362C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C343836312E37322C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C343932392E34382C313136372E36342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C353036352E30312C313136372E36342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C343939372E32342C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C343931392E382C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C343931392E382C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C343833322E36382C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C343736342E39322C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C343638372E34382C313136372E36342CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C353037382E34332C313136372E33322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313732372E34382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C353038362E362C313732372E30342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C353031342E31392C313136372E37322CD7F3C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C313836372E36352C313732372E36382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323433312E39372C3633392E3132352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333834382E30362C3338332E3932352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C333231352E37372C3338332E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313031312E39312C3338332E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323031392E30342C313136372E362CD3D2C5DC2CCAB9D3C3BCBCC4DC2C353030303030380D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323235382E37322C313136372E38382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C353331352E38322C313732372E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C353335342E392C3839352E34362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313739322E31342C3633392E34342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
	   -- ����10
	   "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323333302E33312C313732372E32392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323238352E34342C313732372E34392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3238382E3134312C313732372E33342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C3235352E3533312C313732372E33342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323333302E33312C3532362CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323333302E33312C3533352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323333302E33312C3535302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323333302E33312C3538302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323238352E34342C3532362CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323238352E34342C3533352CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323238352E34342C3535302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C323238352E34342C3538302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3238382E3134312C3532362CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3238382E3134312C3533352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3238382E3134312C3535302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3238382E3134312C3538302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3235352E3533312C3532362CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3235352E3533312C3533352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3235352E3533312C3535302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3235352E3533312C3538302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD3D2C5DCCAB12C313732352E30382C313037312E31322CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F3C5DCCAB12C3833312E3737352C313037312E37322CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3833312E3737352C3638302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C3833312E3737352C3730302CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C313732352E3038352C3638302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C313732352E3038352C3730302CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313238302E352C3733352E3936352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313330302E352C3733352E3936352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313332302E352C3733352E3936352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",
	   -- ����11
	   "D6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313637302E32382C313732372E362CD7F3C5DC2CCAB9D3C3BCBCC4DC2C313130393032310D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313330362E39392C313732372E362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313732332E32332C313732372E362CD7F3C5DC2CCAB9D3C3BCBCC4DC2C31323130303231",
	   -- ����12
	   "D6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313637302E32382C313732372E362CD7F3C5DC2CCAB9D3C3BCBCC4DC2C313130393032310D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313330362E39392C313732372E362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313732332E32332C313732372E362CD7F3C5DC2CCAB9D3C3BCBCC4DC2C31323130303231",
	   -- ����13
	   "",
	   -- ����14
	   "",
	   -- ����15
	   "",
	   -- ����16
	   "",
	   -- ����17
	   "",
	},
	 onScriptRound = function () -- ����ÿ���л���ͼ�ص�
		if getmapid()==36909 then
			ini_change("find_youhao","��³��ָ�ӹ�;��˹�������ӳ�;����ķ��ħ��ʦ;����ķ�彵����ʿ;�������峤������;������;������;��¡;�������������;;��ɱ������1;��ɱ������2;������ʧ1������;������ʧ2������;������ʧ3������;������ʧ4������;���ƶ�������;����Ծ������;������������;��MHP������;�ж�������;������ʧ5������;��1����ʧ������;��2����ʧ������;��3����ʧ������;��4����ʧ������;��5����ʧ������;��6����ʧ������;��������5������;��BOSSһ��������;������ʧ��Ⱦ��;�����Ƶ���������;һ����ը��ը��;����������;�Ӳ�;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;???? ???;���̣���;���ƣ���;����;BOSS�����͹�;С��5;����5;����3;С��3;Ұ��������;BOSS�������;BOSS����������;����С����1��7��;С������46���ʱ��;���֣�����Ƶ�ʸ�;����ģ����;������;���������Ĵ�è;?? ???;��������������;��è����2Lv;���������;���湥���֣��ٻ���;�������ٻ���;ӣ����Ů;����ӳ�;�۷�;��ɱBOSS2����������;ΪBoss1������������;����;ΪBoss2������������;����������;���湥����;�������;�����ٶ�������;ը��;???? ???;С���ٻ�������;��ɱ���ܹ�3�ٻ�������;��è����;Сʦ��;��ѧ��ͽ;Сʦ��;��ʦ��;ʦ��;ʦ��;DS-SL1;DS-G3648;DS-RG52;?? ???;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;��� Ӱ��;��è 3Lv;��è 6Lv;��è 5Lv;��è 4Lv;��è 2Lv;����õ�巴��������;õ�巴��������;???;ŷ�����ĳ�������;????? ??;����������;����ҳ����˺���������;��ȼ������;������;��ˮ�����֣��ٻ���;��ˮ����ٻ���;�����õ��;���;����ΪBoss1����ӷ���������;����ΪBoss1������������;���湥����;�������;���߹��ܹ�4����ɱbuff������;��ɱ����ǽ������;��ɱboss1����������;boss2�����ٻ�������;���ܹ�2�����ٻ�������;����;���ܹ�1�ٻ�������;��ɱ���ܹ�3�ٻ�������;С���ٻ�������;���һ���ٻ�1;���׶ι���;���һ���ٻ�3;�������ٻ�1;�������ٻ�4;�������ٻ�3;�������ٻ�2;��������ٻ�1;��������ٻ�6;��������ٻ�5;̽�ռҳɹ��ٻ�;�������ٻ�7;�������ٻ�6;�������ٻ�5;��������ٻ�2;��������ٻ�5;���һ���ٻ�2;���һ���ٻ�4;���һ���ٻ�5;���һ���ٻ�6;ˮ���󶴼�ʱ��;��������ٻ�3;��Ԫ��;Ԫ��������;ˮԪ��;��Ԫ��;��ɱ������;������ɱ������;�����ɱ������1;���1;���2;���3;�����ɱ������2;�������������;??? ?? ??;Ŧ���¹�������С������;������;��ɱ������1;ʱ�ճ���;��ɱ�Ƿ���;������è��²;��צ;~��Դ~;�Ӳ�;ɱ������������;�ʼҴ��ڴ��;��ȼ������;Ӱ�� ͸����;����������;�����ҵĻ���;��ɫ������;���ҵ���Ļ���;��ɫ�����ң�;�м��ɱ��С��������5;С��5;����ʯͷ5;Ұ���������;���ų����ٳ���������5������5��ʯͷ�ִ��ٻ���������BUFF��;���ų����ٳ���������3������3��ʯͷ�ִ��ٻ���������BUFF��;����С����һֻҰ���������ͷͷ;����5;����3;С��3;�м��С���ٻ���5;����С����һֻҰ����ͷͷ;�м��С���ٻ���3;����С����һֻҰ��������ͷͷ;�̳أ�С�֣�;�Ƴأ�С�֣�;Ұ��������;Ұ��������;Ұ����;�������м�� 5S;ɱ��С��������5;�м��С��5;���أ�С�֣�;�м��ɱ��С��������3;����ʯͷ3;���ͼ���;??????? ??? ??;���̣���;���ƣ���;BOSS�����͹�;BOSS�����������;а�����;0;ȥ��BOSS�ӳɵ���Ȫ;�������ٻ���;����������;ը��;�����ٶ�������;ʯԪ��;�����ͽ;���ӥ;ˮ�ù�������;ˮ���ϰ�;")
		end
    end
})