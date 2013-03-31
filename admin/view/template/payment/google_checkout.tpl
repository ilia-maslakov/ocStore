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
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_merchant_id; ?></label>
          <div class="controls">
            <input type="text" name="google_checkout_merchant_id" value="<?php echo $google_checkout_merchant_id; ?>" />
            <?php if ($error_merchant_id) { ?>
            <span class="error"><?php echo $error_merchant_id; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><span class="required">*</span> <?php echo $entry_merchant_key; ?></label>
          <div class="controls">
            <input type="text" name="google_checkout_merchant_key" value="<?php echo $google_checkout_merchant_key; ?>" />
            <?php if ($error_merchant_key) { ?>
            <span class="error"><?php echo $error_merchant_key; ?></span>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_callback; ?></label>
          <div class="controls">
            <textarea cols="40" rows="5"><?php echo $callback; ?></textarea>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_test; ?></label>
          <div class="controls">
            <?php if ($google_checkout_test) { ?>
            <input type="radio" name="google_checkout_test" value="1" checked="checked" />
            <?php echo $text_yes; ?>
            <input type="radio" name="google_checkout_test" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="google_checkout_test" value="1" />
            <?php echo $text_yes; ?>
            <input type="radio" name="google_checkout_test" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_total; ?></label>
          <div class="controls">
            <input type="text" name="google_checkout_total" value="<?php echo $google_checkout_total; ?>" /> <span class="help-inline"><i data-toggle="tooltip" data-placement="top" data-original-title="<?php echo $help_total; ?>" class="icon-question-sign"></i></span>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_order_status; ?></label>
          <div class="controls">
            <select name="google_checkout_order_status_id">
              <?php foreach ($order_statuses as $order_status) { ?>
              <?php if ($order_status['order_status_id'] == $google_checkout_order_status_id) { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_geo_zone; ?></label>
          <div class="controls">
            <select name="google_checkout_geo_zone_id">
              <option value="0"><?php echo $text_all_zones; ?></option>
              <?php foreach ($geo_zones as $geo_zone) { ?>
              <?php if ($geo_zone['geo_zone_id'] == $google_checkout_geo_zone_id) { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="control-group">
          <label class="control-label" for="input-name"><?php echo $entry_status; ?></label>
          <div class="controls">
            <select name="google_checkout_status">
              <?php if ($google_checkout_status) { ?>
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
            <input type="text" name="google_checkout_sort_order" value="<?php echo $google_checkout_sort_order; ?>" size="1" />
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>