{% extends 'home:page/layout.tpl' %}
<!--main content-->
{% block content %}
	{% require "home:widget/solution/solution.css" %}
	<!-- 各栏目banner图 -->
	<div class="ad-banner solution-banner">
		<div class="row">
			<ul class="project-list clearfix">
				<li class="item-1">户外俱乐部</li>
				<li class="item-2">旅行社</li>
				<li class="item-3">签证机构</li>
				<li class="item-4">旅游网站</li>
			</ul>
		</div>
	</div>
	<!-- 解决方案 -->
	<div class="solve-box">
		<div class="tab-func">
			<div class="tab">
				<ul class="row">
					<li class="i curr" data-type="0"><span class="icon iconfont">&#xf0138;</span>户外俱乐部</li>
					<li class="i" data-type="1"><span class="icon iconfont" style="font-size:26px;">&#xf0139;</span>签证机构</li>
					<li class="i" data-type="2"><span class="icon iconfont" style="font-size:28px;">&#xf0140;</span>旅游网站</li>
					<li class="i last" data-type="3"><span class="icon iconfont">&#xf0141;</span>旅行社</li>
				</ul>
			</div>

			<div class="con">
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-01.jpg" alt="户外俱乐部">
							<span class="text">户外俱乐部</span>
						</div>
						<div class="other">有没有专门针对户外的保险产品？<br />有个网站，能不能挂个风格一致的保险频道？</div>
					</div>
					<div class="right-box">
						<div class="mb20">
							<p class="fz-24 fc-3 mb10">产品方案</p>
							<p class="fz-14 lh-24">
								普通户外险：低至3天5元；<br />
								领队责任险：保额达60万，可按年保障；<br />
								特色订制险：含救援保障、医疗运送和送返；<br />
								<a href="javascript:;" class="lk-red fz-14">精选户外保险推荐</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">合作方案</p>
							<p class="fz-14 lh-24 mb10">
								1、开通联盟账户，在线投保<br />
								拥有一整套完整的保险交易和数据统计系统<br />
								<a href="javascript:;" class="lk-red fz-14">如何在线投保，如何查看数据？</a>
							</p>
							<p class="fz-14 lh-24">
								2、保险频道嵌入<br />
								将个人专属的“保险天猫店“”（电脑保险门店和移动保险微店），装修成与自己网站风格一致的网页，然后嵌入到
								自己网站、论坛、App、微信服务号等进行推广。如果对“保险天猫店“风格不满意，可以装修好保险店铺在嵌入。<br />
								<a href="javascript:;" class="lk-red fz-14">如何装修店铺，更好的嵌入？</a>
							</p>
						</div>
					</div>
				</div>
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-02.jpg" alt="签证机构">
							<span class="text">签证机构</span>
						</div>
						<div class="other">
							业务不错但经营单一，想扩展保险业务变现；<br />
							市面上的签证保险点数太低，利润空间小；<br />
							有网站流量挺大，有可靠的保险合作伙伴吗？<br />
							我的分支机构多而散，可不可以一账多管理？
						</div>
					</div>
					<div class="right-box">
						<div class="mb20">
							<p class="fz-24 fc-3 mb10">产品方案</p>
							<p class="fz-14 lh-24">
								高达30%服务费签证保险<br />
								含拒签补偿，海外直付医疗保障<br />
								<a href="javascript:;" class="lk-red fz-14">精选申根签证保险推荐</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">合作方案</p>
							<p class="fz-14 lh-24 mb10">
								1、注册联盟账户<br />
								拥有一整套完整的保险交易和数据统计系统<br />
								<a href="javascript:;" class="lk-red fz-14">详细使用教程</a>
							</p>
							<p class="fz-14 lh-24 mb10">
								2、保险频道嵌入<br />可将个人专属的“保险天猫店“”（电脑保险门店和移动保险微店）嵌入到自己的网站、论坛、App、微信服务号订阅号等进行推广；<br />
								<a href="javascript:;" class="lk-red fz-14">怎样嵌入保险频道？</a>
							</p>
							<p class="fz-14 lh-24 mb10">
								3、开通代理商系统<br />通过该系统可整合小、散签证机构资源，做保险业务聚合管理；
							</p>
							<p class="fz-14 lh-24">
								4、开放平台对接<br />
								将联盟保险直接对接到您的网站平台，用户看不到联盟保险标识，但可以进行更简易的保险购买操作<br />
								<a href="javascript:;" class="lk-red fz-14">什么是开放平台？</a>
							</p>
						</div>
					</div>
				</div>
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-03.jpg" alt="旅游网站">
							<span class="text">旅游网站</span>
						</div>
						<div class="other">
							我网站流量很大，用户有潜在的买保险需求；<br />
							我想扩展保险业务，实现网站流量变现，<br />
							但我没有网销资格，谁能帮我报备？
						</div>
					</div>
					<div class="right-box">
						<div class="mb20">
							<p class="fz-24 fc-3 mb10">产品方案</p>
							<p class="fz-14 lh-24">
								服务费高达30%；<br />
								配置全方位旅游保险<br />
								<a href="javascript:;" class="lk-red fz-14">精选旅游保险推荐</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">合作方案</p>
							<p class="fz-14 lh-24 mb10">
								1、注册联盟账户<br />
								拥有一整套完整的保险交易和数据统计系统<br />
								<a href="javascript:;" class="lk-red fz-14">详细使用教程</a>
							</p>
							<p class="fz-14 lh-24 mb10">
								1、保险频道嵌入<br />
								可将个人专属的“保险天猫店“（电脑保险门店和移动保险微店）嵌入到自己的网站、论坛、App、微信服务号等进行推广；如果对“保险天猫店“风格不满意，可以装修好保险店铺在嵌入。<br />
								<a href="javascript:;" class="lk-red fz-14">如何装修店铺，更好的嵌入？</a>
							</p>
							<p class="fz-14 lh-24">
								2、开放平台对接<br />
								将联盟保险直接对接到您的网站平台，用户看不到联盟保险标识，但可以进行更简易的保险购买操作。<br />
								<a href="javascript:;" class="lk-red fz-14">什么是开放平台？</a>
							</p>
						</div>
					</div>
				</div>
				<div class="con-item">
					<div class="left-box">
						<div class="item-pic">
							<img class="pic" src="../widget/solution/icon/solve-04.jpg" alt="旅行社">
							<span class="text">旅行社</span>
						</div>
						<div class="other">
							天天要买保险，合作的保险价格太高，有没有价格低保障权的保险，<br />
							帮我能减低点内部支出；<br />
							我有内部客户系统，但投保流程太繁琐，太占人力；
						</div>
					</div>
					<div class="right-box">
						<div class="mb20 mt70">
							<p class="fz-24 fc-3 mb10">产品方案</p>
							<p class="fz-14 lh-24">
								境内险：低至1元；<br />
								境外险：低至7折；<br />
								涵盖60多家保险公司900多款产品；<br />
								<a href="javascript:;" class="lk-red fz-14">旅游保险推荐</a>
							</p>
						</div>
						<div>
							<p class="fz-24 fc-3 mb10">合作方案</p>
							<p class="fz-14 lh-24">
								开放平台对接<br />
								将联盟保险直接对接到您的网站平台，用户看不到联盟保险标识，但可以进行更简易的保险购买操作。<br />
								<a href="javascript:;" class="lk-red fz-14">什么是开放平台？</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--合作案例-->
	<div class="ui-module mb40 module-case">
		<div class="row">
			<h3 class="ui-sub-title"><span class="iconfont fz-30">&#xf0126;</span>合作案例</h3>
			<table class="table-case">
				<tbody>
				<tr>
					<td class="partner-1"><a href="javascript:;">蓝途旅行网</a></td>
					<td class="partner-2"><a href="javascript:;">中华户外网</a></td>
					<td class="partner-3"><a href="javascript:;">汇京融</a></td>
					<td class="partner-4"><a href="javascript:;">众行天下</a></td>
				</tr>
				<tr>
					<td class="partner-5"><a href="javascript:;">去哪儿</a></td>
					<td class="partner-6"><a href="javascript:;">麦兜旅行</a></td>
					<td class="partner-7"><a href="javascript:;">80天环游网</a></td>
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
