<!--
  header ui 组件
  @author roy
-->
<div class="header" style="position: relative;z-index: 3;">
	<div class="warp fc">
		<div class="logo fl"></div>
		<ul class="nav fl" data-curr="index">
			<li data-tag="index" class="item ui-main-nav-cur curr"><a class="dib white" href="/index">首页</a></li>
			<li data-tag="pro" class="item">
				<a class="dib white" href="/pro/list?productTypeId=24&amp;productType=%E6%97%85%E6%B8%B8%E4%BF%9D%E9%99%A9&amp;productItem=%E5%9B%BD%E5%86%85%E6%97%85%E6%B8%B8%E4%BF%9D%E9%99%A9&amp;order=1_0">
					投保
				</a>
			</li>

			<li class="item hide activityLi"><a class="dib white" href="javascript:;">活动</a></li>

			<li data-tag="order" class="item">
				<a class="dib white" href="/order/1">订单</a>
			</li>
			<li data-tag="my" class="item my" id="my" status="1">
				<a class="dib white" href="/user/index">我的&nbsp;&nbsp;&nbsp;</a>
				<div class="con hide" dropdown="" style="display: none;">
					<div class="pt1">
						<div class="arrow-up dib">
							<div class="arrow-con dib"></div>
						</div>
					</div>
					<div class="pt2">
						<ul class="list mt-sm">
							<li class="f14"><a class="black6" href="/msg">我的消息</a></li>
							<li class="f14" id="my-ref-link"><a class="black6" href="/user/ref_member">我的推荐</a></li>
							<li class="f14" id="my-get-link"><a class="black6" href="/user/income_detail">我的收益</a></li>
							<li class="f14"><a class="black6" href="/user/settings">店铺设置</a></li>
							<li class="f14"><a class="black6" href="/user/info">个人资料</a></li>
							<li class="f14"><a class="black6" href="/user/logout">退出</a></li>
						</ul>
					</div>
				</div>
			</li>
		</ul>
		<div class="search fl f14">
			<form action="/search" style="width: 214px;overflow: hidden;">
				<input type="text" class="ipt" id="ipt-search" name="keywords" placeholder="搜索您需要的保险产品">
				<button class="btn-search" id="btn-search"></button>
			</form>
		</div>
		<div class="td fl fr" id="header-td" status="1">
			<div class="td-thumb dib"></div>
			<div class="arrow-down dib"></div>
			<div class="con hide" dropdown="" style="display: none;"><!--dropDown-->
				<div class="pt1">
					<div class="arrow-up dib">
						<div class="arrow-con dib"></div>
					</div>
				</div>
				<div class="pt2 black3">
					<div class="row cb">
						<div class="icon wx-follow fl"></div>
						<div class="text ml-lg mt-lg pl-sm fl">
							<div class="f14">关注我们</div>
							<div class="mt-lg black6">出保单 <br> 查余额</div>
						</div>
					</div>
					<div class="row cb mt-lg">
						<div class="icon app-download fl"></div>
						<div class="text ml-lg mt-md pl-sm fl">
							<div class="f14">下载APP</div>
							<div class="mt-sm black6">随时随地 手机投保</div>
							<a class="mt-lg dib btn-app-dl" href="/app" target="_blank"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>