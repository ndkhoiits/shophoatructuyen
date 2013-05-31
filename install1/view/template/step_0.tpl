<?php echo $header; ?>
<h1 style="background: url('view/image/license.png') no-repeat;"><?php echo $lable_step0 ?></h1>
<div style="width: 100%; display: inline-block;">
  <div style="float: left; width: 569px;">

    <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
      
       <div style="padding: 5px;">
      <?php echo($lable_header_Lang)?> <br><br>
      <center>
	<a href=./?route=step_1&language=vn><img src="view/image/vietnamese.jpg" width="200" height="120"></a>
	<a href=./?route=step_1&language=en><img src="view/image/english.gif" width="200" height="120"></a>
      </center>
      </div>
     
    </div>

  </div>
  <div style="float: right; width: 205px; height: 400px; padding: 10px; color: #663300; border: 1px solid #FFE0CC; background: #FFF5CC;">
    <ul>     
      <li><b><?php echo($lable_Lang)?></b></li>
      <li><?php echo($lable_License)?></li>
      <li><?php echo($lable_Pre_Installation)?></li>
      <li><?php echo($lable_Configuration)?></li>
      <li><?php echo($lable_Finished)?></li>
    </ul>
  </div>
</div>
<?php echo $footer; ?>