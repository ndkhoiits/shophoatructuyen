<?php echo $header; ?>
<h1 style="background: url('view/image/license.png') no-repeat;"><?php echo $lable_step1 ?> - <?php echo($lable_License)?></h1>
<div style="width: 100%; display: inline-block;">
  <div style="float: left; width: 569px;">
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
      <div style="color: #333; height: 300px; width: 545px; border: 1px solid #CCC; background: #FFF; overflow-y: scroll;overflow-x:hidden;">
        <div style="padding: 5px;">
         <?php echo $GNU_GENERAL_PUBLIC_LICENSE ?>
        </div>
      </div>
    </div>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px; text-align: right;"><?php echo($lable_agree)?>
        <input type="checkbox" name="agree" />
      </div>
      <div style="text-align: right;"><a onclick="document.getElementById('form').submit()" class="button"><span class="button_left button_continue"></span><span class="button_middle"><?php echo($lable_Continue)?></span><span class="button_right"></span></a></div>
    </form>
  </div>
  <div style="float: right; width: 205px; height: 400px; padding: 10px; color: #663300; border: 1px solid #FFE0CC; background: #FFF5CC;">
    <ul>
      <li><?php echo($lable_Lang)?></li>
      <li><b><?php echo($lable_License)?></b></li>
      <li><?php echo($lable_Pre_Installation)?></li>
      <li><?php echo($lable_Configuration)?></li>
      <li><?php echo($lable_Finished)?></li>
    </ul>
  </div>
</div>
<?php echo $footer; ?>