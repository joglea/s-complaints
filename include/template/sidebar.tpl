<{if $sidebarStatus=='yes' }>
<div id="sidebar-nav" class="sidebar-nav">
<{else}>
<div id="sidebar-nav" class="sidebar-nav-hide">
<{/if}>
		<{foreach from=$sidebar item=module}>
			<{if count($module.menu_list)> 0}>
				<{if $module.module_id == 3}>
				<ul>
					<li>客诉分析</li>
					<ul>
						<li><a href="/complaint/import.php">数据导入</a></li>
					</ul>
					<li>基本信息分析</li>
					<ul>
						<li><a href="/complaint/search.php">客户投诉查询</a></li>
						<li>客户投诉分析</li>
						<ul>
							<li><a href="/complaint/analyze.php">全国投诉情况分析</a></li>
							<li><a href="/complaint/sp_analyze.php">sp公司投诉情况分析</a></li>
							<li><a href="/complaint/single.php">单产品投诉情况</a></li>

						</ul>
					</ul>
					<li>不规范定制分析</li>
						<ul>
						<li><a href="/complaint/custom_search.php">不规范定制查询</a></li>
						<li>客户投诉分析</li>
						<ul>
							<li><a href="/complaint/custom_analyze.php">全国投诉情况分析</a></li>
							<li><a href="/complaint/custom_sp_analyze.php">sp公司投诉情况分析</a></li>
							<li><a href="/complaint/custom_single.php">单产品不规范定制情况</a></li>

						</ul>
						</ul>
					<li>工信部投诉分析</li>
					<ul>
						<li><a href="/complaint/complaints_search.php">工信部投诉查询</a></li>
						<li>工信部投诉分析</li>
						<ul>
							<li><a href="/complaint/complaints_analyze.php">全国工信部投诉分析</a></li>
							<li><a href="/complaint/complaints_sp_analyze.php">sp公司工信部投诉分析</a></li>
							<li><a href="/complaint/complaints_single.php">单产品工信部投诉情况</a></li>
						</ul>
					</ul>
					<!-- <li></li> -->
				</ul>
				<{else}>
			<a href="#sidebar_menu_<{$module.module_id}>" class="nav-header collapsed" data-toggle="collapse"><i class="<{$module.module_icon}>"></i><{$module.module_name}> <i class="icon-chevron-up"></i></a>
				<{if $module.module_id == $current_module_id }>
					<ul id="sidebar_menu_<{$module.module_id}>" class="nav nav-list collapse in">
				<{else}>
					<ul id="sidebar_menu_<{$module.module_id}>" class="nav nav-list collapse">
				<{/if}>
				
				<{foreach from=$module.menu_list item=menu_list name=menu_url_list}>
				
				<{if strtolower(substr($menu_list.menu_url,0,7))=='http://'}>
					<li><a target=_blank href="<{$menu_list.menu_url}>"><{$menu_list.menu_name}></a></li>
				<{else}>
					<li><a href="<{$smarty.const.ADMIN_URL}><{$menu_list.menu_url}>"><{$menu_list.menu_name}></a></li>
				<{/if}>
				
				<{/foreach}>
			</ul>
			<{/if}>
			<{/if}>
			
		<{/foreach}>
</div>
	 <!--- 以上为左侧菜单栏 sidebar --->
<{if $sidebarStatus=='yes' }>
<div id="content" class="content">
<{else}>
<div id="content" class="content-fullscreen">
<{/if}>        
        <div class="header">
            <div class="stats">
			<p class="stat"><!--span class="number"></span--></p>
			</div>

            <h1 class="page-title"><{$content_header.menu_name}></h1>
        </div>
        
		<ul class="breadcrumb">
            <li><a href="<{$smarty.const.ADMIN_URL}><{$content_header.module_url}>"> <{$content_header.module_name}> </a> <span class="divider">/</span></li>
           
			<{if $content_header.father_menu}>
			<li><a href="<{$smarty.const.ADMIN_URL}><{$content_header.father_menu_url}>"> <{$content_header.father_menu_name}> </a> <span class="divider">/</span></li>
			<{/if}>
			
			<li class="active"><{$content_header.menu_name}></li>
			<{if $content_header.shortcut_allowed}>
				<{if $content_header.menu_id|in_array:$user_info.shortcuts_arr}>
					<a title= "移除快捷菜单" href="#"><li class="active"><i class="icon-minus" method="del" url="<{$smarty.const.ADMIN_URL}>/ajax/shortcut.php?menu_id=<{$content_header.menu_id}>"></i></li></a>
				<{else}>
					<a title= "加入快捷菜单" href="#"><li class="active"><i class="icon-plus" method="add" url="<{$smarty.const.ADMIN_URL}>/ajax/shortcut.php?menu_id=<{$content_header.menu_id}>"></i></li></a>
				<{/if}>
			<{/if}>
			
        </ul>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="bb-alert alert alert-info" style="display: none;">
			<span>操作成功</span>
		</div>