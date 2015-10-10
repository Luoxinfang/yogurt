
{% extends 'home:page/layout.tpl' %}
<!--main content-->
{% block content %}
  {% require "home:widget/about/about.css" %}
  <!-- ����Ŀbannerͼ -->
  <div class="ad-banner pingtai-banner"></div>
  <!--ƽ̨����-->
  <div class="ui-module module-introduce">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont">&#xf0120;</span>ƽ̨����</h3>
      <div class="introduce-des">
        <p class="mb20">���������ڳ�ֵ�����ҵ������״���������屣������Ļ����ϣ��Ա��շ���Ϊ���У���������ղ�Ʒ
          ��Դ�ͼ���ϵͳ���ƣ�Ϊ���μ�����������ҵ�������硢ǩ֤������������ֲ���������վ���Ƶ��Ʊ�ȣ����Ķ��Ʋ���
          �����ս��������</p>
        <div>
          <img src="../widget/about/icon/abls-img.jpg" alt="ƽ̨����" class="office-img">
          <p class="mb20">�������Ǹ��ˡ�С΢�̼ҡ����»�������վվ���������Ż�վ�㡢���̡�����ƽ̨���������ˡ���С��ҵ��
            ֻҪע���Ϊ���˻�Ա���Ϳ���ѡ���ʺϵĺ�����ʽ����������ز�Ʒ�����ۺ��ƹ㣬���û������Ч����󣬿ɻ�ȡ��
            Ӧ���ƹ����ѡ�</p>
          <p class="mb20">��������ͨ�����ϵ�Ŭ�����ܹ�����Խ��Խ�����ҵ���������һ���£���ͬ�ɳ���</p>
          <p class="mb10">���������ƽ̨��Ҫ�󣬾�����ƽ̨��ͬ�ɳ�����Ը��ƽ̨��Ϊ���ṩϵͳ����Ʒ���ͷ���������ȫ��λ��
            ֧�֣�������������ҵ�����εı�����Դ���Ի�ȡ���������г���</p>
        </div>
      </div>
    </div>
  </div>
  <!--��������-->
  <div class="ui-module module-advantage">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont">&#xf0121;</span>��������</h3>
      <div class="advantage-content">
        <div class="a-slider-tab">
          <ul class="clearfix">
            <li class="active">
              <a href="javascript:;">
                <i class="iconfont">&#xf0122;</i>
                <span class="text">��Ʒ����</span>
              </a>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xf0123;</i>
                <span class="text">ҵ������</span>
              </a>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xf0124;</i>
                <span class="text">��������</span>
              </a>
            </li>
          </ul>
        </div>
        <div class="slider-content-outer">
          <div class="slider-content">
            <div class="advantages-list">
              <ul>
                <li>�������60��ұ��չ�˾����</li>
                <li>����900����г�������Ʒ</li>
                <li>���Ρ����⡢���������⡢���յȣ�����ȫ����</li>
                <li>����Ϊ�ͻ������Ƴ���������Ƭ���ı���</li>
                <li>����̽���հ�����ı���</li>
              </ul>
            </div>
            <div class="advantages-img">
              <img src="../widget/about/icon/platform-01.png" alt="��Ʒ����"/>
            </div>
          </div>
          <div class="slider-content hide">
            <div class="advantages-list">
              <ul>
                <li>�ṩ���г��������ı��ն���</li>
                <li>�ṩ�߶�㣬���뷽������</li>
                <li>7*24Сʱ�ۺ�����������365��</li>
                <li>0�ż���÷���֧�ţ���Ϊ�������ʷ���</li>
                <li> �ṩ���ա���ѵ��������������ֵ����</li>
              </ul>
            </div>
            <div class="img-container">
              <img src="../widget/about/icon/platform-02.png" alt="ҵ������"/>
            </div>
          </div>
          <div class="slider-content hide">
            <div class="advantages-list">
              <ul>
                <li>�����ŵ����벻�ٿ���</li>
                <li>����ֻ��30�룬֧���������Ч</li>
                <li>�ṩ�������ݺ�̨��֧�ź������ճ���Ӫ</li>
                <li>֧����ҳ��APP���ֻ���ҳ����Ӧ�ø�ƽ̨</li>
                <li>֧�ֺ������������ٵͳɱ�����</li>
              </ul>
            </div>
            <div class="img-container">
              <img src="../widget/about/icon/platform-03.png" alt="��������"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--ƽ̨��ɫ-->
  <div class="ui-module module-feature bg-f6">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont">&#xf0125;</span>ƽ̨��ɫ</h3>
      <div class="features">
        <div class="feature-item">
          <p class="fc-3 fz-22 mb10">�ż���</p>
          <p class="fz-14">���ˡ���ҵ�����Ժ���</p>
          <span class="icon-1"></span>
        </div>
        <div class="feature-item">
          <p class="fc-3 fz-22 mb10">�����</p>
          <p class="fz-14">�ṩ��߶����Ʒ</p>
          <span class="icon-2"></span>
        </div>
        <div class="feature-item feature-item-3">
          <p class="fc-3 fz-22 mb10">����ȫ</p>
          <p class="fz-14">7*24Сʱ�ͷ�</p>
          <span class="icon-3"></span>
        </div>
      </div>
    </div>
  </div>
  <!--������ʽ-->
  <div class="ui-module module-hezuo">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont fz-30">&#xf0126;</span>������ʽ</h3>
      <div class="clearfix">
        <div class="cooperate cooperate-1">
          <div class="step-1">
            <span class="fz-16">��ͨ�˺�Ͷ��</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">��ͨ�˺ţ�����Ͷ��</p>
              <p class="fz-14 lh-24 mb40">һ���˺ţ�ȫ�����<br />��ʱ�������Ͷ��<br />�������ɲ鿴����<br />�������Ͷ�����鿴ͳ�����ݣ�</p>
              <div><a class="btn-default" href="javascript:;">�˽����</a></div>
            </div>
          </div>

        </div>
        <div class="cooperate cooperate-2">
          <div class="step-1">
            <span class="fz-16">����Ƶ��Ƕ��</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">����Ƶ��Ƕ��</p>
              <p class="fz-14 lh-24 mb40">���˿���ר���ı����ŵ�<br />�������������վ��APP��΢�Ź���ƽ̨<br />���԰Ѹ���ר�������ŵ�Ƕ�뵽�Լ�����վ��APP��΢�Ź���ƽ̨<br />���װ�޵��̸��õ�Ƕ�룬����Ҫ�����ʶ</p>
              <div><a class="btn-default" href="javascript:;">�˽����</a></div>
            </div>
          </div>
        </div>
        <div class="cooperate cooperate-3">
          <div class="step-1">
            <span class="fz-16">����ר������</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">����ר������</p>
              <p class="fz-14 lh-24 mb40">��֯ר�ŵĲ�Ʒ���������г���Ա<br />�����ƻ����������<br />��Ѹ����Ӧ��ִ�����<br />
                ��������4006-366-366</p>
            </div>
          </div>
        </div>
        <div class="cooperate cooperate-4">
          <div class="step-1">
            <span class="fz-16">����ƽ̨�Խ�</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">����ƽ̨�Խ�</p>
              <p class="fz-14 lh-24 mb40">�����ṩ<br />60��ұ��չ�˾��900����Ʒ�ĺ���ҵ��ӿ�<br />
                ��Ͷ����������֧�������㡢������ѯ��<br />���б����������з�ʵ���ĺ���������</p>
              <div><a class="btn-default" href="javascript:;">ʲô�ǿ���ƽ̨��</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--��������-->
  <div class="ui-module module-join bg-f6">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont fz-30">&#xf0118;</span>��������</h3>
      <div class="join-process">
        <ul>
          <li>ע��<br />��дע����Ϣ</li>
          <li>���<br />1����������</li>
          <li>����<br />��½���н���</li>
          <li>����<br />ÿ�³�����</li>
        </ul>
      </div>
      <div class="tc"><a class="btn-negative" href="javascript:;">�������<i class="iconfont ml10">&#xf0128;</i></a></div>
    </div>
  </div>
  {%script%}
  require("home:widget/about/about.js").init();
  {%endscript%}
{% endblock %}