<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-error"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="box-heading">
      <h1><i class="icon-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="box-content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="buttons"><a onclick="$('#form').submit();" class="btn"><i class="icon-ok"></i> <?php echo $button_save; ?></a> <a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a></div>
        <div class="control-group">
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_key; ?></label>
          <div class="controls">
            <input type="text" name="fedex_key" value="<?php echo $fedex_key; ?>" />
            <?php if ($error_key) { ?>
            <span class="error"><?php echo $error_key; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_password; ?></label>
          <div class="controls">
            <input type="text" name="fedex_password" value="<?php echo $fedex_password; ?>" />
            <?php if ($error_password) { ?>
            <span class="error"><?php echo $error_password; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_account; ?></label>
          <div class="controls">
            <input type="text" name="fedex_account" value="<?php echo $fedex_account; ?>" />
            <?php if ($error_account) { ?>
            <span class="error"><?php echo $error_account; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_meter; ?></label>
          <div class="controls">
            <input type="text" name="fedex_meter" value="<?php echo $fedex_meter; ?>" />
            <?php if ($error_meter) { ?>
            <span class="error"><?php echo $error_meter; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_postcode; ?></label>
          <div class="controls">
            <input type="text" name="fedex_postcode" value="<?php echo $fedex_postcode; ?>" />
            <?php if ($error_postcode) { ?>
            <span class="error"><?php echo $error_postcode; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_test; ?></label>
          <div class="controls">
            <?php if ($fedex_test) { ?>
            <input type="radio" name="fedex_test" value="1" checked="checked" />
            <?php echo $text_yes; ?>
            <input type="radio" name="fedex_test" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="fedex_test" value="1" />
            <?php echo $text_yes; ?>
            <input type="radio" name="fedex_test" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_service; ?></label>
          <div class="controls">
            <div class="scrollbox">
              <?php $class = 'odd'; ?>
              <?php foreach ($services as $service) { ?>
              <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
              <div class="<?php echo $class; ?>">
                <?php if (in_array($service['value'], $fedex_service)) { ?>
                <input type="checkbox" name="fedex_service[]" value="<?php echo $service['value']; ?>" checked="checked" />
                <?php echo $service['text']; ?>
                <?php } else { ?>
                <input type="checkbox" name="fedex_service[]" value="<?php echo $service['value']; ?>" />
                <?php echo $service['text']; ?>
                <?php } ?>
              </div>
              <?php } ?>
            </div>
            <a onclick="$(this).parent().find(':checkbox').attr('checked', true);"><?php echo $text_select_all; ?></a> / <a onclick="$(this).parent().find(':checkbox').attr('checked', false);"><?php echo $text_unselect_all; ?></a> </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_dropoff_type; ?></label>
          <div class="controls">
            <select name="fedex_dropoff_type">
              <?php if ($fedex_dropoff_type == 'REGULAR_PICKUP') { ?>
              <option value="REGULAR_PICKUP" selected="selected"><?php echo $text_regular_pickup; ?></option>
              <?php } else { ?>
              <option value="REGULAR_PICKUP"><?php echo $text_regular_pickup; ?></option>
              <?php } ?>
              <?php if ($fedex_dropoff_type == 'REQUEST_COURIER') { ?>
              <option value="REQUEST_COURIER" selected="selected"><?php echo $text_request_courier; ?></option>
              <?php } else { ?>
              <option value="REQUEST_COURIER"><?php echo $text_request_courier; ?></option>
              <?php } ?>
              <?php if ($fedex_dropoff_type == 'DROP_BOX') { ?>
              <option value="DROP_BOX" selected="selected"><?php echo $text_drop_box; ?></option>
              <?php } else { ?>
              <option value="DROP_BOX"><?php echo $text_drop_box; ?></option>
              <?php } ?>
              <?php if ($fedex_dropoff_type == 'BUSINESS_SERVICE_CENTER') { ?>
              <option value="BUSINESS_SERVICE_CENTER" selected="selected"><?php echo $text_business_service_center; ?></option>
              <?php } else { ?>
              <option value="BUSINESS_SERVICE_CENTER"><?php echo $text_business_service_center; ?></option>
              <?php } ?>
              <?php if ($fedex_dropoff_type == 'STATION') { ?>
              <option value="STATION" selected="selected"><?php echo $text_station; ?></option>
              <?php } else { ?>
              <option value="STATION"><?php echo $text_station; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_packaging_type; ?></label>
          <div class="controls">
            <select name="fedex_packaging_type">
              <?php if ($fedex_packaging_type == 'FEDEX_ENVELOPE') { ?>
              <option value="FEDEX_ENVELOPE" selected="selected"><?php echo $text_fedex_envelope; ?></option>
              <?php } else { ?>
              <option value="FEDEX_ENVELOPE"><?php echo $text_fedex_envelope; ?></option>
              <?php } ?>
              <?php if ($fedex_packaging_type == 'FEDEX_PAK') { ?>
              <option value="FEDEX_PAK" selected="selected"><?php echo $text_fedex_pak; ?></option>
              <?php } else { ?>
              <option value="FEDEX_PAK"><?php echo $text_fedex_pak; ?></option>
              <?php } ?>
              <?php if ($fedex_packaging_type == 'FEDEX_BOX') { ?>
              <option value="FEDEX_BOX" selected="selected"><?php echo $text_fedex_box; ?></option>
              <?php } else { ?>
              <option value="FEDEX_BOX"><?php echo $text_fedex_box; ?></option>
              <?php } ?>
              <?php if ($fedex_packaging_type == 'FEDEX_TUBE') { ?>
              <option value="FEDEX_TUBE" selected="selected"><?php echo $text_fedex_tube; ?></option>
              <?php } else { ?>
              <option value="FEDEX_TUBE"><?php echo $text_fedex_tube; ?></option>
              <?php } ?>
              <?php if ($fedex_packaging_type == 'FEDEX_10KG_BOX') { ?>
              <option value="FEDEX_10KG_BOX" selected="selected"><?php echo $text_fedex_10kg_box; ?></option>
              <?php } else { ?>
              <option value="FEDEX_10KG_BOX"><?php echo $text_fedex_10kg_box; ?></option>
              <?php } ?>
              <?php if ($fedex_packaging_type == 'FEDEX_25KG_BOX') { ?>
              <option value="FEDEX_25KG_BOX" selected="selected"><?php echo $text_fedex_25kg_box; ?></option>
              <?php } else { ?>
              <option value="FEDEX_25KG_BOX"><?php echo $text_fedex_25kg_box; ?></option>
              <?php } ?>
              <?php if ($fedex_packaging_type == 'YOUR_PACKAGING') { ?>
              <option value="YOUR_PACKAGING" selected="selected"><?php echo $text_your_packaging; ?></option>
              <?php } else { ?>
              <option value="YOUR_PACKAGING"><?php echo $text_your_packaging; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_rate_type; ?></label>
          <div class="controls">
            <select name="fedex_rate_type">
              <?php if ($fedex_rate_type == 'LIST') { ?>
              <option value="LIST" selected="selected"><?php echo $text_list_rate; ?></option>
              <?php } else { ?>
              <option value="LIST"><?php echo $text_list_rate; ?></option>
              <?php } ?>
              <?php if ($fedex_rate_type == 'ACCOUNT') { ?>
              <option value="ACCOUNT" selected="selected"><?php echo $text_account_rate; ?></option>
              <?php } else { ?>
              <option value="ACCOUNT"><?php echo $text_account_rate; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_display_time; ?></label>
          <div class="controls">
            <?php if ($fedex_display_time) { ?>
            <input type="radio" name="fedex_display_time" value="1" checked="checked" />
            <?php echo $text_yes; ?>
            <input type="radio" name="fedex_display_time" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="fedex_display_time" value="1" />
            <?php echo $text_yes; ?>
            <input type="radio" name="fedex_display_time" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?>
            <span class="help-block"><?php echo $help_display_time; ?></span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_display_weight; ?></label>
          <div class="controls">
            <?php if ($fedex_display_weight) { ?>
            <input type="radio" name="fedex_display_weight" value="1" checked="checked" />
            <?php echo $text_yes; ?>
            <input type="radio" name="fedex_display_weight" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="fedex_display_weight" value="1" />
            <?php echo $text_yes; ?>
            <input type="radio" name="fedex_display_weight" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?>
            <span class="help-block"><?php echo $help_display_weight; ?></span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_weight_class; ?></label>
          <div class="controls">
            <select name="fedex_weight_class_id">
              <?php foreach ($weight_classes as $weight_class) { ?>
              <?php if ($weight_class['weight_class_id'] == $fedex_weight_class_id) { ?>
              <option value="<?php echo $weight_class['weight_class_id']; ?>" selected="selected"><?php echo $weight_class['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $weight_class['weight_class_id']; ?>"><?php echo $weight_class['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select> <span class="help-block"><?php echo $help_weight_class; ?></span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_tax_class; ?></label>
          <div class="controls">
            <select name="fedex_tax_class_id">
              <option value="0"><?php echo $text_none; ?></option>
              <?php foreach ($tax_classes as $tax_class) { ?>
              <?php if ($tax_class['tax_class_id'] == $fedex_tax_class_id) { ?>
              <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_geo_zone; ?></label>
          <div class="controls">
            <select name="fedex_geo_zone_id">
              <option value="0"><?php echo $text_all_zones; ?></option>
              <?php foreach ($geo_zones as $geo_zone) { ?>
              <?php if ($geo_zone['geo_zone_id'] == $fedex_geo_zone_id) { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_status ?></label>
          <div class="controls">
            <select name="fedex_status">
              <?php if ($fedex_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_sort_order; ?></label>
          <div class="controls">
            <input type="text" name="fedex_sort_order" value="<?php echo $fedex_sort_order; ?>" class="input-mini" />
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>
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
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><?php echo $entry_domestic; ?></td>
            <td><div class="scrollbox">
                <?php $class = 'odd'; ?>
                <div class="even">
                  <?php if ($fedex_domestic_00) { ?>
                  <input type="checkbox" name="fedex_domestic_00" value="1" checked="checked" />
                  <?php echo $text_domestic_00; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_00" value="1" />
                  <?php echo $text_domestic_00; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_01) { ?>
                  <input type="checkbox" name="fedex_domestic_01" value="1" checked="checked" />
                  <?php echo $text_domestic_01; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_01" value="1" />
                  <?php echo $text_domestic_01; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_02) { ?>
                  <input type="checkbox" name="fedex_domestic_02" value="1" checked="checked" />
                  <?php echo $text_domestic_02; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_02" value="1" />
                  <?php echo $text_domestic_02; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_03) { ?>
                  <input type="checkbox" name="fedex_domestic_03" value="1" checked="checked" />
                  <?php echo $text_domestic_03; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_03" value="1" />
                  <?php echo $text_domestic_03; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_1) { ?>
                  <input type="checkbox" name="fedex_domestic_1" value="1" checked="checked" />
                  <?php echo $text_domestic_1; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_1" value="1" />
                  <?php echo $text_domestic_1; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_2) { ?>
                  <input type="checkbox" name="fedex_domestic_2" value="1" checked="checked" />
                  <?php echo $text_domestic_2; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_2" value="1" />
                  <?php echo $text_domestic_2; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_3) { ?>
                  <input type="checkbox" name="fedex_domestic_3" value="1" checked="checked" />
                  <?php echo $text_domestic_3; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_3" value="1" />
                  <?php echo $text_domestic_3; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_4) { ?>
                  <input type="checkbox" name="fedex_domestic_4" value="1" checked="checked" />
                  <?php echo $text_domestic_4; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_4" value="1" />
                  <?php echo $text_domestic_4; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_5) { ?>
                  <input type="checkbox" name="fedex_domestic_5" value="1" checked="checked" />
                  <?php echo $text_domestic_5; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_5" value="1" />
                  <?php echo $text_domestic_5; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_6) { ?>
                  <input type="checkbox" name="fedex_domestic_6" value="1" checked="checked" />
                  <?php echo $text_domestic_6; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_6" value="1" />
                  <?php echo $text_domestic_6; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_7) { ?>
                  <input type="checkbox" name="fedex_domestic_7" value="1" checked="checked" />
                  <?php echo $text_domestic_7; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_7" value="1" />
                  <?php echo $text_domestic_7; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_12) { ?>
                  <input type="checkbox" name="fedex_domestic_12" value="1" checked="checked" />
                  <?php echo $text_domestic_12; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_12" value="1" />
                  <?php echo $text_domestic_12; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_13) { ?>
                  <input type="checkbox" name="fedex_domestic_13" value="1" checked="checked" />
                  <?php echo $text_domestic_13; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_13" value="1" />
                  <?php echo $text_domestic_13; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_16) { ?>
                  <input type="checkbox" name="fedex_domestic_16" value="1" checked="checked" />
                  <?php echo $text_domestic_16; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_16" value="1" />
                  <?php echo $text_domestic_16; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_17) { ?>
                  <input type="checkbox" name="fedex_domestic_17" value="1" checked="checked" />
                  <?php echo $text_domestic_17; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_17" value="1" />
                  <?php echo $text_domestic_17; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_18) { ?>
                  <input type="checkbox" name="fedex_domestic_18" value="1" checked="checked" />
                  <?php echo $text_domestic_18; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_18" value="1" />
                  <?php echo $text_domestic_18; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_19) { ?>
                  <input type="checkbox" name="fedex_domestic_19" value="1" checked="checked" />
                  <?php echo $text_domestic_19; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_19" value="1" />
                  <?php echo $text_domestic_19; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_22) { ?>
                  <input type="checkbox" name="fedex_domestic_22" value="1" checked="checked" />
                  <?php echo $text_domestic_22; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_22" value="1" />
                  <?php echo $text_domestic_22; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_23) { ?>
                  <input type="checkbox" name="fedex_domestic_23" value="1" checked="checked" />
                  <?php echo $text_domestic_23; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_23" value="1" />
                  <?php echo $text_domestic_23; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_25) { ?>
                  <input type="checkbox" name="fedex_domestic_25" value="1" checked="checked" />
                  <?php echo $text_domestic_25; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_25" value="1" />
                  <?php echo $text_domestic_25; ?>
                  <?php } ?>
                </div>
                <div class="odd">
                  <?php if ($fedex_domestic_27) { ?>
                  <input type="checkbox" name="fedex_domestic_27" value="1" checked="checked" />
                  <?php echo $text_domestic_27; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_27" value="1" />
                  <?php echo $text_domestic_27; ?>
                  <?php } ?>
                </div>
                <div class="even">
                  <?php if ($fedex_domestic_28) { ?>
                  <input type="checkbox" name="fedex_domestic_28" value="1" checked="checked" />
                  <?php echo $text_domestic_28; ?>
                  <?php } else { ?>
                  <input type="checkbox" name="fedex_domestic_28" value="1" />
                  <?php echo $text_domestic_28; ?>
                  <?php } ?>
                </div>
              </div>
              <a onclick="$(this).parent().find(':checkbox').attr('checked', true);"><?php echo $text_select_all; ?></a> / <a onclick="$(this).parent().find(':checkbox').attr('checked', false);"><?php echo $text_unselect_all; ?></a></td>
          </tr>
          <tr>
            <td><?php echo $entry_tax_class; ?></td>
            <td><select name="fedex_tax_class_id">
                <option value="0"><?php echo $text_none; ?></option>
                <?php foreach ($tax_classes as $tax_class) { ?>
                <?php if ($tax_class['tax_class_id'] == $fedex_tax_class_id) { ?>
                <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="fedex_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $fedex_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status ?></td>
            <td><select name="fedex_status">
                <?php if ($fedex_status) { ?>
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
            <td><input type="text" name="fedex_sort_order" value="<?php echo $fedex_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>