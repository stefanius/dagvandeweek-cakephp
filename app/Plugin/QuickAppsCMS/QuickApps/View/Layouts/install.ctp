<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
	<head>
		<title><?php echo __t('QuickApps Installation'); ?></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<?php echo $this->Html->css('System.reset.css');?>
		<?php echo $this->Html->css('System.install.css');?>
		<?php echo $this->Html->script('System.jquery.js');?>
		<?php echo $this->Html->script('System.ui/jquery.effects.all.min.js');?>
	</head>

	<body>
		<div id="container">
			<div id="topspacer">
				&nbsp;
			</div>

			<div id="content">
				<div id="logo"><?php echo $this->Html->image('/system/img/logo.png'); ?></div>
				<?php echo $this->Layout->content(); ?>
			</div>
		</div>
	</body>
</html>