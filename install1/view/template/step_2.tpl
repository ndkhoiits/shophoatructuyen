<?php echo $header; ?>
<h1 style="background: url('view/image/installation.png') no-repeat;"><?php echo($lable_step2)?></h1>
<div style="width: 100%; display: inline-block;">
  <div style="float: left; width: 569px;">
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <p><?php echo($lable_header_php_setting)?></p>
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
        <table width="100%">
          <tr>
            <th width="35%" align="left"><b><?php echo($lable_php_setting)?></b></th>
            <th width="25%" align="left"><b><?php echo($lable_Current_Settings)?></b></th>
            <th width="25%" align="left"><b><?php echo($lable_Required_Settings)?></b></th>
            <th width="15%" align="center"><b><?php echo($lable_Status)?></b></th>
          </tr>
          <tr>
            <td><?php echo($lable_PHP_Version)?>:</td>
            <td><?php echo phpversion(); ?></td>
            <td>5.0+</td>
            <td align="center"><?php echo (phpversion() >= '5.0') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
          <tr>
            <td><?php echo($lable_Register_Globals)?>:</td>
            <td><?php echo (ini_get('register_globals')) ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_Off)?></td>
            <td align="center"><?php echo (!ini_get('register_globals')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
          <tr>
            <td><?php echo($lable_Magic_Quotes_GPC)?>:</td>
            <td><?php echo (ini_get('magic_quotes_gpc')) ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_Off)?></td>
            <td align="center"><?php echo (!ini_get('magic_quotes_gpc')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
          <tr>
            <td><?php echo($lable_File_Uploads)?>:</td>
            <td><?php echo (ini_get('file_uploads')) ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_On)?></td>
            <td align="center"><?php echo (ini_get('file_uploads')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
          <tr>
            <td><?php echo($lable_Session_Auto_Start)?>:</td>
            <td><?php echo (ini_get('session_auto_start')) ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_Off)?></td>
            <td align="center"><?php echo (!ini_get('session_auto_start')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
        </table>
      </div>
      <p><?php echo($lable_header_Extension)?></p>
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
        <table width="100%">
          <tr>
            <th width="35%" align="left"><b><?php echo($lable_Extension)?></b></th>
           <th width="25%" align="left"><b><?php echo($lable_Current_Settings)?></b></th>
            <th width="25%" align="left"><b><?php echo($lable_Required_Settings)?></b></th>
            <th width="15%" align="center"><b><?php echo($lable_Status)?></b></th>
          </tr>
          <tr>
            <td><?php echo($lable_MySQL)?>:</td>
            <td><?php echo extension_loaded('mysql') ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_On)?></td>
            <td align="center"><?php echo extension_loaded('mysql') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
          <tr>
            <td><?php echo($lable_GD)?>:</td>
            <td><?php echo extension_loaded('gd') ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_On)?></td>
            <td align="center"><?php echo extension_loaded('gd') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
          <tr>
            <td><?php echo($lable_cURL)?>:</td>
            <td><?php echo extension_loaded('curl') ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_On)?></td>
            <td align="center"><?php echo extension_loaded('curl') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
          <tr>
            <td><?php echo($lable_ZIP)?>:</td>
            <td><?php echo extension_loaded('zlib') ? $lable_On : $lable_Off; ?></td>
            <td><?php echo($lable_On)?></td>
            <td align="center"><?php echo extension_loaded('zlib') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
          </tr>
        </table>
      </div>
      <p><?php echo($lable_header_Files)?></p>
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
        <table width="100%">
          <tr>
            <th align="left"><b><?php echo($lable_Files)?></b></th>
            <th width="15%" align="left"><b><?php echo($lable_Status)?></b></th>
          </tr>
          <tr>
            <td><?php echo $config_catalog; ?></td>
            <td><?php echo is_writable($config_catalog) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>
          <tr>
            <td><?php echo $config_admin; ?></td>
            <td><?php echo is_writable($config_admin) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>
        </table>
      </div>
      <p><?php echo($lable_header_Directories)?></p>
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
        <table width="100%">
          <tr>
            <th align="left"><b><?php echo($lable_Directories)?></b></th>
            <th width="15%" align="left"><b><?php echo($lable_Status)?></b></th>
          </tr>
          <tr>
            <td><?php echo $cache . '/'; ?></td>
            <td><?php echo is_writable($cache) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>
          <tr>
            <td><?php echo $logs . '/'; ?></td>
            <td><?php echo is_writable($logs) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>
          <tr>
            <td><?php echo $image . '/'; ?></td>
            <td><?php echo is_writable($image) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>
          <tr>
            <td><?php echo $image_cache . '/'; ?></td>
            <td><?php echo is_writable($image_cache) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>
          <tr>
            <td><?php echo $image_data . '/'; ?></td>
            <td><?php echo is_writable($image_data) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>          
          <tr>
            <td><?php echo $download . '/'; ?></td>
            <td><?php echo is_writable($download) ? '<span class="good">'.$lable_Writable.'</span>' : '<span class="bad">'.$lable_Unwritable.'</span>'; ?></td>
          </tr>
        </table>
      </div>
      <div style="text-align: right;"><a onclick="document.getElementById('form').submit()" class="button"><span class="button_left button_continue"></span><span class="button_middle"><?php echo($lable_Continue)?></span><span class="button_right"></span></a></div>
    </form>
  </div>
  <div style="float: right; width: 205px; height: 400px; padding: 10px; color: #663300; border: 1px solid #FFE0CC; background: #FFF5CC;">
    <ul>
      <li><?php echo($lable_Lang)?></li>
      <li><?php echo($lable_License)?></li>
      <li><b><?php echo($lable_Pre_Installation)?></b></li>
      <li><?php echo($lable_Configuration)?></li>
      <li><?php echo($lable_Finished)?></li>
    </ul>
  </div>
</div>
<?php echo $footer; ?>