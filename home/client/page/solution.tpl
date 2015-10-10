{% extends 'home:page/layout.tpl' %}
<!--main content-->
{% block content %}
	{% require "home:widget/solution/solution.css" %}
	<!-- ����Ŀbannerͼ -->
	<div class="ad-banner solution-banner">
		<div class="row">
			<ul class="project-list clearfix">
				<li class="item-1">������ֲ�</li>
				<li class="item-2">������</li>
				<li class="item-3">ǩ֤����</li>
				<li class="item-4">������վ</li>
			</ul>
		</div>
	</div>
	<!-- ������� -->
	<div class="solve-box">
		<div class="tab-func">
			<div class="tab">
				<ul class="row">
					<li class="i curr" data-type="0"><span class="icon iconfont">&#xf0138;</span>������ֲ�</li>
					<li class="i" data-type="1"><span class="icon iconfont" style="font-size:26px;">&#xf0139;</span>ǩ֤����</li>
					<li class="i" data-type="2"><span class="icon iconfont" style="font-size:28px;">&#xf0140;</span>������վ</li>
					<li class="i last" data-type="3"><span class="icon iconfont">&#xf0141;</span>������</li>
				</ul>
			</div>

			<div class="con">
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-01.jpg" alt="������ֲ�">
							<span class="text">������ֲ�</span>
						</div>
						<div class="other">��û��ר����Ի���ı��ղ�Ʒ��<br />�и���վ���ܲ��ܹҸ����һ�µı���Ƶ����</div>
					</div>
					<div class="right-box">
						<div class="mb20">
							<p class="fz-24 fc-3 mb10">��Ʒ����</p>
							<p class="fz-14 lh-24">
								��ͨ�����գ�����3��5Ԫ��<br />
								��������գ������60�򣬿ɰ��걣�ϣ�<br />
								��ɫ�����գ�����Ԯ���ϡ�ҽ�����ͺ��ͷ���<br />
								<a href="javascript:;" class="lk-red fz-14">��ѡ���Ᵽ���Ƽ�</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">��������</p>
							<p class="fz-14 lh-24 mb10">
								1����ͨ�����˻�������Ͷ��<br />
								ӵ��һ���������ı��ս��׺�����ͳ��ϵͳ<br />
								<a href="javascript:;" class="lk-red fz-14">�������Ͷ������β鿴���ݣ�</a>
							</p>
							<p class="fz-14 lh-24">
								2������Ƶ��Ƕ��<br />
								������ר���ġ�������è�ꡰ�������Ա����ŵ���ƶ�����΢�꣩��װ�޳����Լ���վ���һ�µ���ҳ��Ȼ��Ƕ�뵽
								�Լ���վ����̳��App��΢�ŷ���ŵȽ����ƹ㡣����ԡ�������è�ꡰ������⣬����װ�޺ñ��յ�����Ƕ�롣<br />
								<a href="javascript:;" class="lk-red fz-14">���װ�޵��̣����õ�Ƕ�룿</a>
							</p>
						</div>
					</div>
				</div>
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-02.jpg" alt="ǩ֤����">
							<span class="text">ǩ֤����</span>
						</div>
						<div class="other">
							ҵ�񲻴���Ӫ��һ������չ����ҵ����֣�<br />
							�����ϵ�ǩ֤���յ���̫�ͣ�����ռ�С��<br />
							����վ����ͦ���пɿ��ı��պ��������<br />
							�ҵķ�֧�������ɢ���ɲ�����һ�˶����
						</div>
					</div>
					<div class="right-box">
						<div class="mb20">
							<p class="fz-24 fc-3 mb10">��Ʒ����</p>
							<p class="fz-14 lh-24">
								�ߴ�30%�����ǩ֤����<br />
								����ǩ����������ֱ��ҽ�Ʊ���<br />
								<a href="javascript:;" class="lk-red fz-14">��ѡ���ǩ֤�����Ƽ�</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">��������</p>
							<p class="fz-14 lh-24 mb10">
								1��ע�������˻�<br />
								ӵ��һ���������ı��ս��׺�����ͳ��ϵͳ<br />
								<a href="javascript:;" class="lk-red fz-14">��ϸʹ�ý̳�</a>
							</p>
							<p class="fz-14 lh-24 mb10">
								2������Ƶ��Ƕ��<br />�ɽ�����ר���ġ�������è�ꡰ�������Ա����ŵ���ƶ�����΢�꣩Ƕ�뵽�Լ�����վ����̳��App��΢�ŷ���Ŷ��ĺŵȽ����ƹ㣻<br />
								<a href="javascript:;" class="lk-red fz-14">����Ƕ�뱣��Ƶ����</a>
							</p>
							<p class="fz-14 lh-24 mb10">
								3����ͨ������ϵͳ<br />ͨ����ϵͳ������С��ɢǩ֤������Դ��������ҵ��ۺϹ���
							</p>
							<p class="fz-14 lh-24">
								4������ƽ̨�Խ�<br />
								�����˱���ֱ�ӶԽӵ�������վƽ̨���û����������˱��ձ�ʶ�������Խ��и����׵ı��չ������<br />
								<a href="javascript:;" class="lk-red fz-14">ʲô�ǿ���ƽ̨��</a>
							</p>
						</div>
					</div>
				</div>
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-03.jpg" alt="������վ">
							<span class="text">������վ</span>
						</div>
						<div class="other">
							����վ�����ܴ��û���Ǳ�ڵ���������<br />
							������չ����ҵ��ʵ����վ�������֣�<br />
							����û�������ʸ�˭�ܰ��ұ�����
						</div>
					</div>
					<div class="right-box">
						<div class="mb20">
							<p class="fz-24 fc-3 mb10">��Ʒ����</p>
							<p class="fz-14 lh-24">
								����Ѹߴ�30%��<br />
								����ȫ��λ���α���<br />
								<a href="javascript:;" class="lk-red fz-14">��ѡ���α����Ƽ�</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">��������</p>
							<p class="fz-14 lh-24 mb10">
								1��ע�������˻�<br />
								ӵ��һ���������ı��ս��׺�����ͳ��ϵͳ<br />
								<a href="javascript:;" class="lk-red fz-14">��ϸʹ�ý̳�</a>
							</p>
							<p class="fz-14 lh-24 mb10">
								1������Ƶ��Ƕ��<br />
								�ɽ�����ר���ġ�������è�ꡰ�����Ա����ŵ���ƶ�����΢�꣩Ƕ�뵽�Լ�����վ����̳��App��΢�ŷ���ŵȽ����ƹ㣻����ԡ�������è�ꡰ������⣬����װ�޺ñ��յ�����Ƕ�롣<br />
								<a href="javascript:;" class="lk-red fz-14">���װ�޵��̣����õ�Ƕ�룿</a>
							</p>
							<p class="fz-14 lh-24">
								2������ƽ̨�Խ�<br />
								�����˱���ֱ�ӶԽӵ�������վƽ̨���û����������˱��ձ�ʶ�������Խ��и����׵ı��չ��������<br />
								<a href="javascript:;" class="lk-red fz-14">ʲô�ǿ���ƽ̨��</a>
							</p>
						</div>
					</div>
				</div>
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-04.jpg" alt="������">
							<span class="text">������</span>
						</div>
						<div class="other">
							����Ҫ���գ������ı��ռ۸�̫�ߣ���û�м۸�ͱ���Ȩ�ı��գ�<br />
							�����ܼ��͵��ڲ�֧����<br />
							�����ڲ��ͻ�ϵͳ����Ͷ������̫������̫ռ������
						</div>
					</div>
					<div class="right-box">
						<div class="mb20 mt70">
							<p class="fz-24 fc-3 mb10">��Ʒ����</p>
							<p class="fz-14 lh-24">
								�����գ�����1Ԫ��<br />
								�����գ�����7�ۣ�<br />
								����60��ұ��չ�˾900����Ʒ��<br />
								<a href="javascript:;" class="lk-red fz-14">���α����Ƽ�</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">��������</p>
							<p class="fz-14 lh-24">
								����ƽ̨�Խ�<br />
								�����˱���ֱ�ӶԽӵ�������վƽ̨���û����������˱��ձ�ʶ�������Խ��и����׵ı��չ��������<br />
								<a href="javascript:;" class="lk-red fz-14">ʲô�ǿ���ƽ̨��</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--��������-->
	<div class="ui-module mb40 module-case">
		<div class="row">
			<h3 class="ui-sub-title"><span class="iconfont fz-30">&#xf0126;</span>��������</h3>
			<table class="table-case">
				<tbody>
				<tr>
					<td class="partner-1"><a href="javascript:;">��;������</a></td>
					<td class="partner-2"><a href="javascript:;">�л�������</a></td>
					<td class="partner-3"><a href="javascript:;">�㾩��</a></td>
					<td class="partner-4"><a href="javascript:;">��������</a></td>
				</tr>
				<tr>
					<td class="partner-5"><a href="javascript:;">ȥ�Ķ�</a></td>
					<td class="partner-6"><a href="javascript:;">������</a></td>
					<td class="partner-7"><a href="javascript:;">80�컷����</a></td>
					<td class="partner-8"><a href="javascript:;">51offer</a></td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
	{%script%}
	require("home:widget/solution/solution.js").init();
	{%endscript%}
{% endblock %}
