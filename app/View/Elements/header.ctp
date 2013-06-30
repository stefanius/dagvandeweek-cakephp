<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
        <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <?php echo $this->Html->link('DagVanDeWeek', '/', array('class' => 'brand')); ?>
        <div class="container nav-collapse">
            <ul class="nav">
                <li><?php echo $this->Html->link('Nieuws', '/nieuws/'); ?></li>
                <li><?php echo $this->Html->link('Wat Is', '/watis/'); ?></li>
            </ul>

            <?php echo $this->element('loginbar');  ?>

        </div>
        </div>
    </div>
</div>