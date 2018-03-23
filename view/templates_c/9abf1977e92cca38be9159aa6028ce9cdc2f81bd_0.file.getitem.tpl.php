<?php
/* Smarty version 3.1.32-dev-35, created on 2018-03-23 21:15:36
  from 'C:\xampp\htdocs\chemical\view\templates\item\getitem.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.32-dev-35',
  'unifunc' => 'content_5ab4efe8434440_35436010',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9abf1977e92cca38be9159aa6028ce9cdc2f81bd' => 
    array (
      0 => 'C:\\xampp\\htdocs\\chemical\\view\\templates\\item\\getitem.tpl',
      1 => 1521807330,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ab4efe8434440_35436010 (Smarty_Internal_Template $_smarty_tpl) {
?>

{
  "item":[
    {
      "icon": "<?php echo $_smarty_tpl->tpl_vars['iconpath']->value;?>
",
      "picture": "<?php echo $_smarty_tpl->tpl_vars['picpath']->value;?>
",
      "name": "<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
",
      "price": "<?php echo $_smarty_tpl->tpl_vars['price']->value;?>
",
      "molweight": "<?php echo $_smarty_tpl->tpl_vars['molWeight']->value;?>
",
      "color": "<?php echo $_smarty_tpl->tpl_vars['color']->value;?>
"
    }
  ]
}
<?php }
}
