<{include file ="header.tpl"}>
<{include file ="navibar.tpl"}>
<{include file ="sidebar.tpl"}>
<!-- TPLSTART 以上内容不需更改，保证该TPL页内的标签匹配即可 -->

<div style="border:0px;padding-bottom:5px;height:auto">

	<form action="" method="GET" style="margin-bottom:0px">
		<div style="float:left;margin-right:5px">

			<label> 选择省份 </label>
			<select name="province_id"><option value="0">全部</option>
			<{foreach name=province from=$data.province item=province}>
				<option value="<{$province.id}>" <{if $param.province_id == $province.id}> selected='selected'<{/if}>><{$province.name}></option>
			<{/foreach}>
			</select>
			<!-- <{$data.province}> -->
		</div>
		<div style="float:left;margin-right:5px">
			<label> 统计月份 </label>
			<input type="text" id="start_date" name="start_date" value="<{$_GET.start_date}>" placeholder="统计月份" >
		</div>
		<div style="float:left;margin-right:5px">
		<label> 具体业务名称</label>
			<input type="text" name="buss_name" value="<{$_GET.buss_name}>" placeholder="具体业务名称" > 
		</div>
		<div style="float:left;margin-right:5px">
		<label> SP公司名称</label>
				<input type="text" name="sp_name" value="<{$_GET.sp_name}>" placeholder="SP公司名称" > 
		</div>
		<div style="float:left;margin-right:5px">
		<label> 业务线</label>
			<select name="buss_type"><option value="0">全部</option>
			<{foreach name=bussLine from=$data.bussLine item=bussLine key=key}>
				<option value="<{$key}>" <{if $param.buss_type == $key}> selected='selected'<{/if}>><{$bussLine}></option>
			<{/foreach}>
			</select>
		</div>
		
		<div class="btn-toolbar" style="padding-top:25px;padding-bottom:0px;margin-bottom:0px">

		<div>
		<button type="submit" class="btn btn-primary"><strong>检索</strong></button>
			
		</div>
		</div>
		<div style="clear:both;"></div>
	</div>
	</form>
</div>
<div class="hide">
<div class="question1">
			<{$data.questionType.1}>	
</div>
<div class="question2">
			<{$data.questionType.2}>	
</div>
<div class="question3">
			<{$data.questionType.3}>	
</div>
</div>

<div class="block">
		<a style="float:right;padding:10px;" href="<{$export_excel}>" target="" >导出excel</a>
        <a href="#page-stats" class="block-heading" data-toggle="collapse">操作记录</a>
        <{if $data.result.0 neq ""}>
        <div id="page-stats" class="block-body collapse in">
               <table class="table table-striped">
              <thead>
                <tr>
       				<{if $smarty.get.province_id}>
					<th style="width:50px">省</th>
					<{/if}>
					<th style="width:50px">公司名称</th>
					<th style="width:50px">sp企业代码</th>
					<th style="width:50px">sp接入号码</th>
					<th style="width:50px">统计月份</th>
					<!-- <th style="width:55px">工单时间</th> -->
					<!-- <th style="width:35px">投诉号码</th> -->
					<!-- <th style="width:55px">具体业务名称</th> -->
					<th style="width:30px">月投诉件数</th>
					<th style="width:30px">环比增长量</th>
					<th style="width:30px">环比增长率</th>
					<th style="width:30px">全国投诉占比</th>
					<th style="width:30px">sp应收</th>

					<th style="width:30px">sp万投比</th>
					<!-- <th style="width:30px">sp接入代码</th> -->
					<!-- <th style="width:30px">投诉内容</th> -->
					<!-- <th style="width:30px">处理意见</th> -->

				<!-- 	<th style="width:30px">投诉问题分类</th>
					<th style="width:30px">投诉分级</th> -->
					<!-- <th style="width:30px">业务线</th> -->

                </tr>
              </thead>
              <tbody>
                <{foreach name=result from=$data.result item=result}>
					<tr>
       				<{if $smarty.get.province_id}>
					<td><{$data.province[$result.province_id]['name']}></td>
					<{/if}>
					<td><{$result.sp_name}></td>
					<td><{$result.sp_corp_code}></td>
					<td><{$result.sp_code}></td>
					<td><{$result.month|date_format:'%Y-%m'}></td>
					<!-- <td><{$result.order_time|date_format:'%Y-%m-%d %H:%M:%S'}></td> -->
					<!-- <td><{$result.complaint_phone}></td> -->
					<!-- <td><{$result.buss_name}></td> -->
					<td><{$result.num}></td>
					<td><{$result.increase}></td>
					<td><{$result.increasePercent|string_format:"%.2f"}>%</td>
					<td><{($result.num/$data.total * 100)|string_format:'%.2f'}>%</td>
					<td><{$result.cos|string_format:'%.2f'}></td>

					<td><{$result.wan|string_format:'%.2f'}></td>

					<!-- <td><{$result.sp_code}></td> -->
					<!-- <td><a href="#" class="detail" data-toggle="popover" data-placement="top" data-original-title="<{$result.complaint_content}>" title="" data-original-title1="投诉内容">详情</a></td> -->
					<!-- <td><a href="#" class="detail" data-toggle="popover" data-placement="top" data-original-title="<{$result.suggestion}>" title="" data-original-title1="">详情</a></td> -->

					<!-- <td><{$result.problem_type}></td>
					<td><{$result.complaint_level}></td> -->
					<!-- <td><{$data.bussLine[$result.buss_type]}></td> -->

					<!-- <td style = "word-break: break-all; word-wrap:break-word;"><{$result.result}></td> -->
					<!-- <td><{$result.op_time}></td> -->
					</tr>
				<{/foreach}>
              </tbody>
            </table>
				<!--- START 分页模板 -->
               <!-- <{$page_html}> -->
			   <!--- END -->
        </div>
        <{else}>
        	<h4>当月无数据！</h4>
        <{/if}>
    </div>
    <{if $data.result}>
    <div>
    	<h3>sp公司投诉情况TOP20</h3>
    	<canvas id="chart" width="700" height="400"></canvas>
    </div>
	<div>
    	<h3>sp公司投诉情况TOP20(万投比)</h3>
    	<canvas id="wanchart" width="700" height="400"></canvas>
    </div>
    <{/if}>
<script>
$(function() {
    // <{if $data.result}>

	var Data = {
		labels : [<{$data.chartName}>],
		datasets : [
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				pointColor : "rgba(151,187,205,1)",
				pointStrokeColor : "#fff",
				data : [<{$data.chartValue}>]
			}
		]
	}

	var ctx = document.getElementById("chart").getContext("2d");
	new Chart(ctx).Bar(Data);

	var wanData = {
		labels : [<{$data.wanString}>],
		datasets : [
			{
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				pointColor : "rgba(151,187,205,1)",
				pointStrokeColor : "#fff",
				data : [<{$data.chartWan}>]
			}
		]
	}

	var ctx = document.getElementById("wanchart").getContext("2d");
	new Chart(ctx).Bar(wanData);
    // <{/if}>

	var date=$( "#start_date" );
	date.datetimepicker({format: 'yyyy-mm',startView: 3,minView: 3,viewSelect:'year'});
	// date.datepicker( "option", "firstDay", 1 );
});


$(function(){
	$('[name="complaint_type"]').change(function(msg){
		$('.question_type').html($('.question'+$(this).val()).html());
	});
})
</script>
<!-- TPLEND 以下内容不需更改，请保证该TPL页内的标签匹配即可 -->
<{include file="footer.tpl" }>