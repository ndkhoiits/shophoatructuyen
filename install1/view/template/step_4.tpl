<?php echo $header; ?>
<h1 style="background: url('view/image/finished.png') no-repeat;">Step 4 - Finished!</h1>
<div style="width: 100%; display: inline-block;">
  <div style="float: left; width: 569px;">
    <div class="warning"><?php echo($lable_install_delete)?></div>
    <p><?php echo($lable_install_successfully)?></p>
    <div style="text-align: center; float: left; margin-bottom: 15px;"><a href="../"><img src="view/image/screenshot_1.png" alt="" width="270" style="border: 1px solid #DDDDDD; padding: 2px; margin-bottom: 3px;" /></a><br />
      <a href="../"><?php echo($lable_goto_shop)?></a>
    </div>
    <div style="text-align: center; float: right;"><a href="../admin/"><img src="view/image/screenshot_2.png" alt="" width="270" style="border: 1px solid #DDDDDD; padding: 2px; margin-bottom: 3px;" /></a><br />
      <a href="../admin/"><?php echo($lable_login_admin)?></a>
    </div>
  </div>
  <div style="float: right; width: 205px; height: 400px; padding: 10px; color: #663300; border: 1px solid #FFE0CC; background: #FFF5CC;">
    <ul>
      <li><?php echo($lable_Lang)?></li>
      <li><?php echo($lable_License)?></li>
      <li><?php echo($lable_Pre_Installation)?></li>
      <li><?php echo($lable_Configuration)?></li>
      <li><b><?php echo($lable_Finished)?></b></li>
    </ul>
  </div>
</div>
<?php echo $footer; ?>