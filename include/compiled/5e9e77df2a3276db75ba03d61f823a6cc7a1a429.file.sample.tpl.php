<?php /* Smarty version Smarty-3.1.15, created on 2014-09-13 13:40:33
         compiled from "D:\wjy\an\include\template\sample\sample.tpl" */ ?>
<?php /*%%SmartyHeaderCode:180945413d8d14c8913-22553315%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5e9e77df2a3276db75ba03d61f823a6cc7a1a429' => 
    array (
      0 => 'D:\\wjy\\an\\include\\template\\sample\\sample.tpl',
      1 => 1382249386,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '180945413d8d14c8913-22553315',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'samples' => 0,
    'sample' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.15',
  'unifunc' => 'content_5413d8d1513064_61477021',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5413d8d1513064_61477021')) {function content_5413d8d1513064_61477021($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("navibar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("sidebar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<!-- TPLSTART 以上内容不需更改，保证该TPL页内的标签匹配即可 -->
<div class="block">
	<a href="#page-stats" class="block-heading" data-toggle="collapse">图表</a>
	<div id="page-stats" class="block-body collapse in">
	<table class="table table-striped">
			<thead>
			<tr>
				<th>#</th>
				<th>所有者</th>
				
			</tr>
			</thead>
			<tbody>							  
			<?php  $_smarty_tpl->tpl_vars['sample'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['sample']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['samples']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['sample']->key => $_smarty_tpl->tpl_vars['sample']->value) {
$_smarty_tpl->tpl_vars['sample']->_loop = true;
?>
				 
				<tr>
				 
				<td><?php echo $_smarty_tpl->tpl_vars['sample']->value['sample_id'];?>
</td>
				 
				<td><?php echo $_smarty_tpl->tpl_vars['sample']->value['sample_content'];?>
</td>
			
				</tr>
			<?php } ?>
		  </tbody>
		</table>						
	</div>
</div>
<!-- TPLEND 以下内容不需更改，请保证该TPL页内的标签匹配即可 -->
<?php echo $_smarty_tpl->getSubTemplate ("footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
<?php }} ?>
