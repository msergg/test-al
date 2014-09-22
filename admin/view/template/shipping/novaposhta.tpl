<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/shipping.png" alt="" /> <?php echo $heading_title; ?></h1>   
    <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
  </div>
  <div class="content">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <table class="form">
        <tr>
          <td>
            <span class="required">*</span> <?php echo $entry_key; ?>
          </td>
          <td><input type="text" name="novaposhta_key" value="<?php echo $novaposhta_key; ?>" />
			<?php if (isset($error_key)) { ?>
				<span class="error"><?=$error_key;?></span>
			<?php } ?>
		  </td>
        </tr>
        <tr>
          <td>
              <?php echo $entry_city_from; ?>
          </td>
          <td><input type="text" name="novaposhta_city_from" value="<?php echo $novaposhta_city_from; ?>" /></td>
        </tr>
        <tr>
          <td>
              <?php echo $entry_type_shipping; ?>
          </td>
          <td><select name="novaposhta_type">
			<?php if($novaposhta_type == 1) {?>
				<option selected="selected" value="1"><?=$entry_type_1;?></option>
				<option value="2"><?=$entry_type_2;?></option>
				<option value="3"><?=$entry_type_3;?></option>
				<option value="4"><?=$entry_type_4;?></option>
			<?php }
			if ($novaposhta_type == 2) { ?>
				<option value="1"><?=$entry_type_1;?></option>
				<option selected="selected" value="2"><?=$entry_type_2;?></option>
				<option value="3"><?=$entry_type_3;?></option>
				<option value="4"><?=$entry_type_4;?></option>
			<?php } if ($novaposhta_type == 3) { ?>
				<option value="1"><?=$entry_type_1;?></option>
				<option value="2"><?=$entry_type_2;?></option>
				<option selected="selected" value="3"><?=$entry_type_3;?></option>
				<option value="4"><?=$entry_type_4;?></option>
			<?php } if ($novaposhta_type == 4) { ?>
				<option value="1"><?=$entry_type_1;?></option>
				<option value="2"><?=$entry_type_2;?></option>
				<option value="3"><?=$entry_type_3;?></option>
				<option selected="selected" value="4"><?=$entry_type_4;?></option>
			<?php } else { ?>
				<option selected="selected" value="1"><?=$entry_type_1;?></option>
				<option value="2"><?=$entry_type_2;?></option>
				<option value="3"><?=$entry_type_3;?></option>
				<option value="4"><?=$entry_type_4;?></option>
			<?php } ?>
		  </select></td>
        </tr>
          <td>
              <?php echo $entry_type_load; ?>
          </td>
          <td><select name="novaposhta_type_load">
			<?php if($novaposhta_type_load == 1) {?>
				<option selected="selected" value="1"><?=$entry_type_load_1;?></option>
				<option value="4"><?=$entry_type_load_4;?></option>
			<?php } elseif ($novaposhta_type_load == 4) { ?>
				<option value="1"><?=$entry_type_load_1;?></option>
				<option selected="selected" value="4"><?=$entry_type_load_4;?></option>
			<?php } else { ?>
				<option selected="selected" value="1"><?=$entry_type_load_1;?></option>
				<option value="4"><?=$entry_type_load_4;?></option>
			<?php } ?>
		  </select></td>
        </tr>
        <tr>
          <td>
              <?php echo $entry_floor_count; ?>
          </td>
          <td><input type="text" name="novaposhta_floor_count" value="<?php echo !empty($novaposhta_floor_count) ? $novaposhta_floor_count: '0' ?>" /></td>
        </tr>
        <tr>
          <td><?php echo $entry_geo_zone; ?></td>
          <td><select name="novaposhta_geo_zone_id">
              <option value="0"><?php echo $text_all_zones; ?></option>
              <?php foreach ($geo_zones as $geo_zone) { ?>
              <?php if ($geo_zone['geo_zone_id'] == $novaposhta_geo_zone_id) { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_status; ?></td>
          <td><select name="novaposhta_status">
              <?php if ($novaposhta_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select></td>
        </tr>
        <tr>
          <td><?php echo $entry_sort_order; ?></td>
          <td><input type="text" name="novaposhta_sort_order" value="<?php echo $novaposhta_sort_order; ?>" size="1" /></td>
        </tr>
        <tr>
          <td colspan="2"><?php echo $entry_copy1; ?></td>
        </tr>
        <tr>
          <td colspan="2"><?php echo $entry_copy; ?></td>
        </tr>
      </table>
    </form>
  </div>
</div>
<?php echo $footer; ?>